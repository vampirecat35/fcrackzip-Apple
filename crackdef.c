/*
 * this file is automatically generated from zipcrack.c, do NOT modify
 */

#if 0
#elif defined(__i386__) || defined(__i386) || defined(i386)
# define ARCH_i386 1
# undef METHOD
# define METHOD 1
# undef USE_MULT_TAB
# undef TARGET_CPU
# define TARGET_CPU 0
# undef init_crack_pw
# define init_crack_pw METHOD1_init_crack_pw
# undef crack_pw
# define crack_pw METHOD1_crack_pw
#  if TARGET_CPU==COMPILE_CPU && USE_MULT_TAB
#   define DEFAULT_METHOD 1
#  endif
#  include "zipcrack.c"
# undef METHOD
# define METHOD 2
# undef USE_MULT_TAB
# undef TARGET_CPU
# define TARGET_CPU 5
# undef init_crack_pw
# define init_crack_pw METHOD2_init_crack_pw
# undef crack_pw
# define crack_pw METHOD2_crack_pw
#  if TARGET_CPU==COMPILE_CPU && USE_MULT_TAB
#   define DEFAULT_METHOD 2
#  endif
#  include "zipcrack.c"
# undef METHOD
# define METHOD 3
# undef USE_MULT_TAB
# undef TARGET_CPU
# define TARGET_CPU 6
# undef init_crack_pw
# define init_crack_pw METHOD3_init_crack_pw
# undef crack_pw
# define crack_pw METHOD3_crack_pw
#  if TARGET_CPU==COMPILE_CPU && USE_MULT_TAB
#   define DEFAULT_METHOD 3
#  endif
#  include "zipcrack.c"
# undef METHOD
# define METHOD 4
# define USE_MULT_TAB 1
# undef TARGET_CPU
# define TARGET_CPU 0
# undef init_crack_pw
# define init_crack_pw METHOD4_init_crack_pw
# undef crack_pw
# define crack_pw METHOD4_crack_pw
#  if TARGET_CPU==COMPILE_CPU && USE_MULT_TAB
#   define DEFAULT_METHOD 4
#  endif
#  include "zipcrack.c"
# undef METHOD
# define METHOD 5
# define USE_MULT_TAB 1
# undef TARGET_CPU
# define TARGET_CPU 5
# undef init_crack_pw
# define init_crack_pw METHOD5_init_crack_pw
# undef crack_pw
# define crack_pw METHOD5_crack_pw
#  if TARGET_CPU==COMPILE_CPU && USE_MULT_TAB
#   define DEFAULT_METHOD 5
#  endif
#  include "zipcrack.c"
# undef METHOD
# define METHOD 6
# define USE_MULT_TAB 1
# undef TARGET_CPU
# define TARGET_CPU 6
# undef init_crack_pw
# define init_crack_pw METHOD6_init_crack_pw
# undef crack_pw
# define crack_pw METHOD6_crack_pw
#  if TARGET_CPU==COMPILE_CPU && USE_MULT_TAB
#   define DEFAULT_METHOD 6
#  endif
#  include "zipcrack.c"
# undef ARCH_i386
#elif 1
# undef METHOD
# define METHOD 1
# undef USE_MULT_TAB
# undef init_crack_pw
# define init_crack_pw METHOD1_init_crack_pw
# undef crack_pw
# define crack_pw METHOD1_crack_pw
#  if USE_MULT_TAB
#   define DEFAULT_METHOD 1
#  endif
#  include "zipcrack.c"
# undef METHOD
# define METHOD 2
# define USE_MULT_TAB 1
# undef init_crack_pw
# define init_crack_pw METHOD2_init_crack_pw
# undef crack_pw
# define crack_pw METHOD2_crack_pw
#  if USE_MULT_TAB
#   define DEFAULT_METHOD 2
#  endif
#  include "zipcrack.c"
#elif defined(__x86_64__) || defined(__x86_64) || defined(x86_64)
# define ARCH_x86_64 1
# undef METHOD
# define METHOD 1
# undef USE_MULT_TAB
# undef TARGET_CPU
# define TARGET_CPU 0
# undef init_crack_pw
# define init_crack_pw METHOD1_init_crack_pw
# undef crack_pw
# define crack_pw METHOD1_crack_pw
#  if TARGET_CPU==COMPILE_CPU && USE_MULT_TAB
#   define DEFAULT_METHOD 1
#  endif
#  include "zipcrack.c"
# undef METHOD
# define METHOD 2
# undef USE_MULT_TAB
# define USE_MULT_TAB 1
# undef TARGET_CPU
# define TARGET_CPU 6
# undef init_crack_pw
# define init_crack_pw METHOD2_init_crack_pw
# undef crack_pw
# define crack_pw METHOD2_crack_pw
#  if TARGET_CPU==COMPILE_CPU && USE_MULT_TAB
#   define DEFAULT_METHOD 2
#  endif
#  include "zipcrack.c"
#else
#warn no architecture compiled in
#endif

#ifndef DEFAULT_METHOD
#define DEFAULT_METHOD 0
#endif

int default_method = DEFAULT_METHOD;

crackmethod methods[] = {
#if 0
#elif defined(__i386__) || defined(__i386) || defined(i386)
  { "cpmask", init_cpmask, crack_cpmask, load_img },
  { "zip1, TARGET_CPU=0", METHOD1_init_crack_pw, METHOD1_crack_pw, load_zip },
  { "zip2, TARGET_CPU=5", METHOD2_init_crack_pw, METHOD2_crack_pw, load_zip },
  { "zip3, TARGET_CPU=6", METHOD3_init_crack_pw, METHOD3_crack_pw, load_zip },
  { "zip4, USE_MULT_TAB, TARGET_CPU=0", METHOD4_init_crack_pw, METHOD4_crack_pw, load_zip },
  { "zip5, USE_MULT_TAB, TARGET_CPU=5", METHOD5_init_crack_pw, METHOD5_crack_pw, load_zip },
  { "zip6, USE_MULT_TAB, TARGET_CPU=6", METHOD6_init_crack_pw, METHOD6_crack_pw, load_zip },
#elif 1
  { "cpmask", init_cpmask, crack_cpmask, load_img },
  { "zip1", METHOD1_init_crack_pw, METHOD1_crack_pw, load_zip },
  { "zip2, USE_MULT_TAB", METHOD2_init_crack_pw, METHOD2_crack_pw, load_zip },
#else
#endif
  { 0, 0, 0, 0 }
};
