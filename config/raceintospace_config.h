#ifndef __RACEINTOSPACE_CONFIG_H__
#define __RACEINTOSPACE_CONFIG_H__

#define RACEINTOSPACE_VERSION_MAJOR 1
#define RACEINTOSPACE_VERSION_MINOR 1

#define DEFAULT_DATADIR "/usr/local/share/raceintospace"
#define DEFAULT_SAVEDIR "."

#define PACKAGE_STRING "Race Into Space"
#define PACKAGE_TARNAME "raceintospace"

#define HAVE_LRINT

#define HAVE_MKDIR
/* #undef HAVE__MKDIR */
#define HAVE_DIRENT_H
#define HAVE_SYS_DIR_H
/* #undef HAVE_SYS_NDIR_H */

#ifndef HAVE_SYS_TYPES_H
#define HAVE_SYS_TYPES_H
#endif  // some compilers define this by default

#define HAVE_SYS_TIME_H
#define HAVE_SYS_TIMEB_H
/* #undef HAVE_NDIR_H */
#define HAVE_UNISTD_H

#define SET_SDL_ICON

/* #undef PLATFORM_PROVIDES_UGLY_CRASH */

#endif /* __RACEINTOSPACE_CONFIG_H__ */
