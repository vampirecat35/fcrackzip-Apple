#ifndef CONFIG_H
#define CONFIG_H

/* config.h.  Generated from config.h.in by configure.  */
/* config.h.in.  Generated from configure.in by autoheader.  */

/* Define this to the default x86 target cpu (5 pentium, 6 ppro). */
/* #undef COMPILE_CPU */

/* Define to 1 if you have the <getopt.h> header file. */
#define HAVE_GETOPT_H 1

/* Define to 1 if you have the `getopt_long' function. */
#define HAVE_GETOPT_LONG 1

/* Define to 1 if you have the `gettimeofday' function. */
#define HAVE_GETTIMEOFDAY 1

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 if you have the <stdbool.h> header file. */
#define HAVE_STDBOOL_H 1

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/time.h> header file. */
#define HAVE_SYS_TIME_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Name of package */
#define PACKAGE "fcrackzip"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT "vampirecat35@gmail.com"

/* Define to the full name of this package. */
#define PACKAGE_NAME "fcrackzip"

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "fcrackzip 1.0"

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME "fcrackzip-1.0.tar"

/* Define to the version of this package. */
#define PACKAGE_VERSION "1.0"

/* The size of `int', as computed by sizeof. */
#define SIZEOF_INT 4

/* The size of `long', as computed by sizeof. */
#if defined(__LP64__) || defined(__x86_64__) || defined(__arm64__) || defined(__aarch64__)
#define SIZEOF_LONG 8
#else
#define SIZEOF_LONG 4
#endif

/* The size of `short', as computed by sizeof. */
#define SIZEOF_SHORT 2

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Define if you can use gcc inline assembly. */
#if defined(__x86_64__) || defined(__i386__)
#define USE_GCC_ASM 1
#endif

/* Define if you can use unix-style redirection. */
#define USE_UNIX_REDIRECTION 1

/* Version number of package */
#define VERSION "1.0"

/* Define to empty if `const' does not conform to ANSI C. */
/* #undef const */

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
/* #undef inline */
#endif

typedef unsigned char u8;

#if SIZEOF_SHORT == 2
typedef unsigned short u16;
#elif SIZEOF_INT == 2
typedef unsigned int u16;
#else
#warn unable to find type with 2 bytes size
#endif

#if SIZEOF_INT == 4
typedef unsigned int u32;
#elif SIZEOF_LONG == 4
typedef unsigned long u32;
#else
#warn unable to find type with 4 bytes size
#endif

#if defined(__x86_64__)
#define USE_GCC_X86_64_ASM 1
#elif defined(__i386__)
#define USE_GCC_X86_ASM 1
#endif

#if defined(__i386__)
#define ARCH_i386 1
#if defined(__i686__)
#define COMPILE_CPU 6
#elif defined(__i586__)
#define COMPILE_CPU 5
#elif defined(__i486__)
#define COMPILE_CPU 4
#else
#define COMPILE_CPU 3
#endif
#elif defined(__x86_64__)
#define ARCH_x86_64 1
#define COMPILE_CPU 6
#elif defined(__arm__)
#define ARCH_arm 1
#define COMPILE_CPU 0
#elif defined(__arm64__) || defined(__aarch64__)
#define ARCH_arm64 1
#define COMPILE_CPU 0
#endif

#if defined(__GNUC__) && (defined(__i386__) || defined(__x86_64__))
#define REGPARAM __attribute__((regparm(1)))
#else
#define REGPARAM
#endif

#endif
