/*
    Copyright (C) 2007 Pace Willison
    Copyright (C) 2007 Krzysztof Kosciuszkiewicz

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

/**
 * \file sdl.c Simple DirectMedia Layer subsystem.
 *
 * Low-level event processing, graphic, audio and video routines.
 * For API and general overview visit http://www.libsdl.org/.
 */

// This file helps with processing A/V.

#include "display/graphics.h"
#include "display/surface.h"

#include "sdlhelper.h"
#include <assert.h>
#include <memory.h>
#include <SDL/SDL.h>
#include "Buzz_inc.h"
#include "options.h"
#include "utils.h"

#define MAX_X   320
#define MAX_Y   200


#define	BUTTON_UP		SDLK_UP			// Up
#define	BUTTON_DOWN		SDLK_DOWN		// Down
#define	BUTTON_LEFT		SDLK_LEFT		// Left
#define	BUTTON_RIGHT	SDLK_RIGHT		// Right
#define	BUTTON_START	SDLK_RETURN		// Start
#define	BUTTON_SELECT	SDLK_ESCAPE		// Select
#define	BUTTON_A		SDLK_LCTRL		// Right button (A)
#define	BUTTON_B		SDLK_LALT		// Bottom button (B)
#define	BUTTON_X		SDLK_SPACE		// Top button (GCW Y, A320 X)
#define	BUTTON_Y		SDLK_LSHIFT		// Left button (GCW X, A320 Y)
#define	BUTTON_L		SDLK_TAB		// L
#define	BUTTON_R		SDLK_BACKSPACE	// R
#define	BUTTON_L2		SDLK_PAGEUP		// L2
#define	BUTTON_R2		SDLK_PAGEDOWN	// R2
#define	BUTTON_L3		SDLK_KP_DIVIDE	// L3
#define	BUTTON_R3		SDLK_KP_PERIOD	// R3
#define	BUTTON_MENU		SDLK_END		// POWER

LOG_DEFAULT_CATEGORY(sdl)

#define KEYBUF_SIZE 256
static int keybuf[KEYBUF_SIZE];
static int keybuf_in_idx, keybuf_out_idx;

int av_mouse_cur_x;
int av_mouse_cur_y;
int av_mouse_pressed_x;
int av_mouse_pressed_y;
int av_mouse_pressed_cur;
int av_mouse_pressed_latched;

static SDL_Color pal_colors[256];

static struct audio_channel Channels[AV_NUM_CHANNELS];

/* information about current fading operation */
static struct {
    unsigned from;
    unsigned to;
    unsigned step;
    unsigned steps;
    unsigned force_black;
    int inc;
    unsigned end;
} fade_info;

/** Assume we have audio until we try to initialize and find that we can't */
static int have_audio = 1;

static int do_fading;

static SDL_AudioSpec audio_desired;

static void
audio_callback(void *userdata, Uint8 *stream, int len)
{
    int ch = 0;

    memset(stream, 0, len);

    for (ch = 0; ch < AV_NUM_CHANNELS; ++ch) {
        int pos = 0;
        struct audio_channel *chp = &Channels[ch];

        if (!chp->mute && chp->volume) {
            struct audio_chunk *ac = chp->chunk;

            while (ac) {
                int bytes =
                    MIN(len - pos, (int) ac->size - (int) chp->offset);

                int i = 0;
                int16_t *dst = (int16_t *)(stream + pos);
                const int16_t *src = (int16_t *)((uint8_t *) ac->data + chp->offset);

                for (i = 0; i < bytes / 2; ++i) {
                    dst[i] += src[i] * chp->volume / AV_MAX_VOLUME / AV_NUM_CHANNELS;
                }

                pos += bytes;
                chp->offset += bytes;

                if (chp->offset == ac->size) {
                    chp->offset = 0;

                    if (!ac->loop) {
                        ac = chp->chunk = chp->chunk->next;

                        if (!chp->chunk) {
                            chp->chunk_tailp = &chp->chunk;
                        }

                        /* why this tailp?? */
                    }
                }

                if (pos == len) {
                    break;
                }

            }
        }
    }
}

/** Check if animation sound playback is in progress.
 * Currently #AV_SOUND_CHANNEL is used only for animation sounds.
 * \return 0 means busy playing audio; 1 means idle
 */
char
AnimSoundCheck(void)
{
    /* assume sound channel */
    av_step();

    if (Channels[AV_SOUND_CHANNEL].chunk) {
        return (0);
    }

    return (1);
}

int
IsChannelMute(int channel)
{
    assert(channel >= 0 && channel < AV_NUM_CHANNELS);

    if (!have_audio) {
        return 1;
    }

    return Channels[channel].mute;
}

void
play(struct audio_chunk *new_chunk, int channel)
{
    struct audio_chunk *cp;
    struct audio_channel *chp;

    assert(channel >= 0 && channel < AV_NUM_CHANNELS);

    chp = &Channels[channel];

    if (!have_audio) {
        return;
    }

    SDL_LockAudio();

    for (cp = chp->chunk; cp; cp = cp->next) {
        if (cp == new_chunk) {
            DEBUG1("attempt to do add duplicate chunk");
            av_silence(channel);
            break;
        }
    }

    new_chunk->next = NULL;
    *chp->chunk_tailp = new_chunk;
    SDL_UnlockAudio();
}

void
av_silence(int channel)
{
    int i = channel;

    if (channel == AV_ALL_CHANNELS) {
        for (i = 0; i < AV_NUM_CHANNELS; ++i) {
            av_silence(i);
        }
    } else {
        assert(channel >= 0 && channel < AV_NUM_CHANNELS);

        if (Channels[channel].chunk) {
            SDL_LockAudio();
            Channels[channel].chunk = NULL;
            Channels[channel].chunk_tailp = &Channels[channel].chunk;
            Channels[channel].offset = 0;
            SDL_UnlockAudio();
        }
    }
}

Uint32
sdl_timer_callback(Uint32 interval, void *param)
{
    static SDL_Event tick;

    tick.type = SDL_USEREVENT;
    SDL_PushEvent(&tick);
    return (interval);
}

/**
 * Set up SDL audio, video and window subsystems.
 */
void
av_setup(void)
{
#ifdef PACKAGE_BUILD
    std::string title(PACKAGE_NAME " " PACKAGE_VERSION " build " PACKAGE_BUILD);
#else
    std::string title(PACKAGE_STRING);
#endif


    display::graphics.create(title, (options.want_fullscreen == 1));


#ifdef SET_SDL_ICON
    char *icon_path;

    if ((icon_path = locate_file("moon_32x32.bmp", FT_IMAGE))) {
        SDL_Surface *icon = SDL_LoadBMP(icon_path);

        if (icon != NULL) {
            SDL_WM_SetIcon(icon, NULL);
        } else {
            INFO2("setting icon failed: %s\n", SDL_GetError());
        }

        free(icon_path);
    }

#endif


    fade_info.step = 1;
    fade_info.steps = 1;
    do_fading = 1;

    SDL_EnableUNICODE(1);
    SDL_EnableKeyRepeat(SDL_DEFAULT_REPEAT_DELAY,
                        SDL_DEFAULT_REPEAT_INTERVAL);

    if (have_audio) {
        int i = 0;

        audio_desired.freq = 11025;
        audio_desired.format = AUDIO_S16SYS;
        audio_desired.channels = 1;
        /* audio was unresponsive on win32 so let's use shorter buffer */
        audio_desired.samples = 2048;   /* was 8192 */
        audio_desired.callback = audio_callback;

        /* initialize audio channels */
        for (i = 0; i < AV_NUM_CHANNELS; ++i) {
            Channels[i].volume = AV_MAX_VOLUME;
            Channels[i].mute = 0;
            Channels[i].chunk = NULL;
            Channels[i].chunk_tailp = &Channels[i].chunk;
            Channels[i].offset = 0;
        }

        /* we don't care what we got, library will convert for us */
        if (SDL_OpenAudio(&audio_desired, NULL) < 0) {
            ERROR2("SDL_OpenAudio error: %s", SDL_GetError());
            NOTICE1("disabling audio");
            have_audio = 0;
        } else {
            SDL_PauseAudio(0);
        }
    }

    SDL_AddTimer(30, sdl_timer_callback, NULL);
}

static void
av_process_event(SDL_Event * evp)
{
	int c = 0;

	uint8_t *keystate = SDL_GetKeyState(NULL);

	switch (evp->type)
	{
		case SDL_QUIT:
			TRACE2("event %04x", evp->type);
			exit(0);
			break;

		case SDL_USEREVENT:
			/* TRACE2("event %04x", evp->type); */
			break;

			case SDL_KEYDOWN:
				av_mouse_cur_x += 15 * (keystate[BUTTON_RIGHT] - keystate[BUTTON_LEFT]);
				av_mouse_cur_y += 15 * (keystate[BUTTON_DOWN]  - keystate[BUTTON_UP]);

				if (av_mouse_cur_x < 0) av_mouse_cur_x = 0;
				if (av_mouse_cur_x > MAX_X*2) av_mouse_cur_x = MAX_X*2;
				if (av_mouse_cur_y < 0) av_mouse_cur_y = 0;
				if (av_mouse_cur_y > MAX_Y*2) av_mouse_cur_y = MAX_Y*2;

				switch (evp->key.keysym.sym) {
						// case SDLK_a:
						case BUTTON_A:
							av_mouse_pressed_cur = 1;
							// av_mouse_pressed_latched = 1;
							av_mouse_pressed_x = av_mouse_cur_x;
							av_mouse_pressed_y = av_mouse_cur_y;
							break;

						case SDLK_UP:
						case SDLK_DOWN:
						case SDLK_RIGHT:
						case SDLK_LEFT:
							SDL_WarpMouse(av_mouse_cur_x, av_mouse_cur_y);
							// av_need_update_xy(av_mouse_cur_x - 10, av_mouse_cur_y - 10, av_mouse_cur_x + 10, av_mouse_cur_x + 10);
							break;

            case BUTTON_MENU:
            case SDLK_b:
              c = SDLK_b;
              break;

						case BUTTON_START:
            c=K_ENTER;
            break;

						case SDLK_HOME:
							c = K_HOME;
							break;

						case BUTTON_SELECT:
            case SDLK_e:
              c = SDLK_e;
              break;
						// case SDLK_END:
						// 	c = K_END;
						// 	break;

						case BUTTON_L:
						case SDLK_v:
            c = SDLK_v;
            break;

						case SDLK_F1:
							c = 0x3B00;
							break;

						case BUTTON_R:
						case SDLK_a:
            c =SDLK_a;
            SDL_KEYUP:
            SDL_KEYDOWN:
            case SDLK_f:
            c =SDLK_f;
            // sleep(5);
            // case SDLK_f:
            // c =SDLK_f;
            break;

						case SDLK_F2:
							c = 0x3C00;
							break;

						case BUTTON_X:
						case SDLK_c:
            c = SDLK_c;
            break;

						case SDLK_F3:
							c = 0x3D00;
							break;

						case BUTTON_B:
						case SDLK_t:
							c = SDLK_t;
							break;

						case BUTTON_Y:
						case SDLK_r:
							c = SDLK_r;
							break;

						default:
						    c = evp->key.keysym.unicode;
						    break;
					}

					TRACE4("event %04x %04x %04x", evp->type, evp->key.keysym.sym, evp->key.keysym.unicode);

					if (c) {
						keybuf[keybuf_in_idx] = c;
						keybuf_in_idx = (keybuf_in_idx + 1) % KEYBUF_SIZE;
					}

					break;

			case SDL_MOUSEBUTTONDOWN:
				av_mouse_pressed_cur = 1;
				av_mouse_pressed_latched = 1;
				av_mouse_pressed_x = evp->button.x;
				av_mouse_pressed_y = evp->button.y;
				TRACE5("event %04x %04x %04x %04x", evp->type, evp->button.x, evp->button.y, evp->button.button);
				break;

			case SDL_MOUSEBUTTONUP:
				TRACE5("event %04x %04x %04x %04x", evp->type, evp->button.x, evp->button.y, evp->button.button);
				av_mouse_pressed_cur = 0;

				/* if we get a mouse wheel event then translate it to arrow keypress */
				if (evp->button.button == SDL_BUTTON_WHEELUP
					|| evp->button.button == SDL_BUTTON_WHEELDOWN) {
					SDL_Event ev;
					int up = evp->button.button == SDL_BUTTON_WHEELUP;
					SDLMod mod = SDL_GetModState();
					SDLKey key;

					if (mod & KMOD_SHIFT) {
						key = up ? SDLK_LEFT : SDLK_RIGHT;
					} else {
						key = up ? SDLK_UP : SDLK_DOWN;
					}

					ev.type = SDL_KEYDOWN;
					ev.key.type = SDL_KEYDOWN;
					ev.key.state = SDL_RELEASED;
					ev.key.keysym.scancode = 0;
					ev.key.keysym.mod = mod;
					ev.key.keysym.unicode = 0;
					ev.key.keysym.sym = key;
					av_process_event(&ev);
				}

				break;

			case SDL_MOUSEMOTION:
				av_mouse_cur_x = evp->motion.x;
				av_mouse_cur_y = evp->motion.y;
				break;

			case SDL_KEYUP:
				switch (evp->key.keysym.sym) {
					case SDLK_a:
					case BUTTON_A:
						av_mouse_pressed_cur = 0;
						av_mouse_pressed_latched = 0;
						break;
				}
				break;

			/* ignore these events */
			case SDL_ACTIVEEVENT:
				break;

			default:
				DEBUG2("got unknown event %d", evp->type);
				break;
	}
}

/* non-blocking */
void
av_step(void)
{
    SDL_Event ev;

    /* Have the music system update itself as required */
    music_pump();

    while (SDL_PollEvent(&ev)) {
        av_process_event(&ev);
    }
}

/**
 * Block until an SDL event comes in.
 *
 * We have a 30ms timer going, so that is the
 * maximum wait time.
 */
void
av_block(void)
{
    SDL_Event ev;

    if (SDL_WaitEvent(&ev)) {
        av_process_event(&ev);
        av_step();                 /* soak up any other currently available events */
    }
}

int
bioskey(int peek)
{
    int c;

    av_step();

    if (peek) {
        if (keybuf_in_idx != keybuf_out_idx) {
            return (1);
        }

        return (0);
    }

    if (keybuf_in_idx == keybuf_out_idx) {
        return (0);
    }

    c = keybuf[keybuf_out_idx];
    keybuf_out_idx = (keybuf_out_idx + 1) % KEYBUF_SIZE;

    return (c);
}

void
UpdateAudio(void)
{
//  av_step ();
}

void
NUpdateVoice(void)
{
    av_step();
}

static SDL_Surface *
SDL_Scale2x(SDL_Surface *src, SDL_Surface *dst)
{
    int x, y, bpp;
    uint8_t *from, *to;
    SDL_Rect clp;
    SDL_PixelFormat *pf;

    assert(src);
    assert(src != dst);

    pf = src->format;

    if (!dst)
        dst = SDL_CreateRGBSurface(SDL_HWSURFACE,
                                   2 * src->w, 2 * src->h,
                                   pf->BitsPerPixel, pf->Rmask, pf->Gmask, pf->Bmask, pf->Amask);

    if (!dst) {
        return NULL;
    }

    bpp = pf->BytesPerPixel;

    if (2 * src->h != dst->h
        || 2 * src->w != dst->w || bpp != dst->format->BytesPerPixel) {
        SDL_SetError("dst surface size or bpp mismatch (%d vs %d)",
                     bpp, dst->format->BytesPerPixel);
        return NULL;
    }

    if (bpp == 1) {
        SDL_SetColors(dst, pf->palette->colors, 0, pf->palette->ncolors);
    }

    if (SDL_MUSTLOCK(src)) {
        SDL_LockSurface(src);
    }

    if (SDL_MUSTLOCK(dst)) {
        SDL_LockSurface(dst);
    }

    SDL_GetClipRect(dst, &clp);

    for (y = clp.y / 2; y < clp.y / 2 + clp.h / 2; ++y) {
        for (x = clp.x / 2; x < clp.x / 2 + clp.w / 2; ++x) {
            from = ((uint8_t *) src->pixels) + y * src->pitch + x * bpp;
            to = ((uint8_t *) dst->pixels) + 2 * y * dst->pitch +
                 2 * x * bpp;

            switch (bpp) {
#define ASSIGN do { \
                    *(TYPE (to)) = *(TYPE from); \
                    *(TYPE (to+bpp)) = *(TYPE from); \
                    *(TYPE (to+dst->pitch)) = *(TYPE from); \
                    *(TYPE (to+dst->pitch+bpp)) = *(TYPE from); \
                } while (0)

            case 1:
#define TYPE (uint8_t *)
                ASSIGN;
                break;
#undef TYPE

            case 2:
#define TYPE (uint16_t *)
                ASSIGN;
                break;
#undef TYPE

            case 3:
#define TYPE (uint8_t *)
                ASSIGN;
                to++;
                from++;
                ASSIGN;
                to++;
                from++;
                ASSIGN;
                to++;
                from++;
                break;
#undef TYPE

            case 4:
#define TYPE (uint32_t *)
                ASSIGN;
                break;
#undef TYPE
#undef ASSIGN
            }
        }
    }

    if (SDL_MUSTLOCK(dst)) {
        SDL_UnlockSurface(dst);
    }

    if (SDL_MUSTLOCK(src)) {
        SDL_UnlockSurface(src);
    }

    return dst;
}

static void
transform_palette(void)
{
    unsigned i, j, step, steps;
    struct range {
        unsigned start, end;
    } ranges[] = {{0, fade_info.from}, {fade_info.to, 256}};

    display::AutoPal p(display::graphics.legacyScreen());

    for (j = 0; j < ARRAY_LENGTH(ranges); ++j) {
        for (i = ranges[j].start; i < ranges[j].end; ++i) {
            if (!fade_info.force_black) {
                pal_colors[i].r = p.pal[3 * i] * 4;
                pal_colors[i].g = p.pal[3 * i + 1] * 4;
                pal_colors[i].b = p.pal[3 * i + 2] * 4;
            } else {
                pal_colors[i].r = 0;
                pal_colors[i].g = 0;
                pal_colors[i].b = 0;
            }
        }
    }

    step = fade_info.step;
    steps = fade_info.steps;
    /* sanity checks */
    assert(steps != 0 && step <= steps);

    for (i = fade_info.from; i < fade_info.to; ++i) {
        /*
         * This should be done this way, but unfortunately some image files
         * have palettes for which pal * 4 overflows single byte. They display
         * correctly in game, but not when multiplication factor varies.
        pal_colors[i].r = pal[3 * i] * 4 * step / steps;
        pal_colors[i].g = pal[3 * i + 1] * 4 * step / steps;
        pal_colors[i].b = pal[3 * i + 2] * 4 * step / steps;
         */

        pal_colors[i].r = p.pal[3 * i] * 4;
        pal_colors[i].r = pal_colors[i].r * step / steps;
        pal_colors[i].g = p.pal[3 * i + 1] * 4;
        pal_colors[i].g = pal_colors[i].g * step / steps;
        pal_colors[i].b = p.pal[3 * i + 2] * 4;
        pal_colors[i].b = pal_colors[i].b * step / steps;
    }
}

void
av_sync(void)
{
    SDL_Rect r;

#ifdef PROFILE_GRAPHICS
    float tot_area = 0;
    int i = 0;
    Uint32 ticks = SDL_GetTicks();
#endif

    SDL_Scale2x(display::graphics.screen()->surface(), display::graphics.scaledScreenSurface());
    /* copy palette and handle fading! */
    transform_palette();
    SDL_SetColors(display::graphics.scaledScreenSurface(), pal_colors, 0, 256);
    SDL_BlitSurface(display::graphics.scaledScreenSurface(), NULL, display::graphics.displaySurface(), NULL);

    if (display::graphics.videoRect().h && display::graphics.videoRect().w) {
        r.h = 2 * display::graphics.videoRect().h;
        r.w = 2 * display::graphics.videoRect().w;
        r.x = 2 * display::graphics.videoRect().x;
        r.y = 2 * display::graphics.videoRect().y;
        SDL_DisplayYUVOverlay(display::graphics.videoOverlay(), &r);
    }

    if (display::graphics.newsRect().h && display::graphics.newsRect().w) {
        r.h = 2 * display::graphics.newsRect().h;
        r.w = 2 * display::graphics.newsRect().w;
        r.x = 2 * display::graphics.newsRect().x;
        r.y = 2 * display::graphics.newsRect().y;
        SDL_DisplayYUVOverlay(display::graphics.newsOverlay(), &r);
    }

    //TODO: Since we're not always tracking the right dirty area (due to the graphics refactoring)
    // for now we update the entire display every time.
    SDL_UpdateRect(display::graphics.displaySurface(), 0, 0, 640, 400);
}

void
MuteChannel(int channel, int mute)
{
    int i;

    if (channel == AV_ALL_CHANNELS) {
        for (i = 0; i < AV_NUM_CHANNELS; ++i) {
            MuteChannel(i, mute);
        }
    } else {
        assert(channel >= 0 && channel < AV_NUM_CHANNELS);
        Channels[channel].mute = mute;
    }
}

/**
 * Set up screen fade effect.  Fading applies only to a range of palette
 * color indexes. Rest of colors in the palette can be preserved or
 * forced to black.
 *
 * \param type #AV_FADE_IN or #AV_FADE_OUT
 * \param from index of first affected color
 * \param to index of last affected color
 * \param steps how many color change steps to perform
 * \param preserve whether to preserve rest of palette colors or not
 */
/*
 * \note A hack, but hey, it works :)
 * Adding periodic timer won't work, because we can't call av_sync from timer.
 * The only thing allowed is SDL_PushEvent, and we don't have event-driven
 * setup. So for now either this or nothing.
 */
void
av_set_fading(int type, int from, int to, int steps, int preserve)
{
    int dir = (type == AV_FADE_IN) ? 1 : -1;
    unsigned st;
    unsigned st_end;

    if (!do_fading) {
        return;
    }

    if (!steps > 0) {
        steps = 5;
    }

    st = (type == AV_FADE_IN) ? 0 : steps;
    st_end = steps - st;

    fade_info.from = from;
    fade_info.to = to;
    fade_info.steps = steps;
    fade_info.step = st;
    fade_info.force_black = !preserve;
    fade_info.inc = dir;
    fade_info.end = st_end;

    for (; fade_info.step != fade_info.end; fade_info.step += fade_info.inc) {
        av_sync();
        SDL_Delay(10);
    }

    av_sync();
}
