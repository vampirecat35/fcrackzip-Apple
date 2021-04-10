/*
 * zipcrack.c - where the 'crack' routine is located
 */

/*
 * guiding comments for gencrack.pl
 *
 * MTH cpmask init_cpmask crack_cpmask load_img
 *
 * LCL init_crack_pw crack_pw
 * LOD load_zip
 *
 * ARC ARCH_i386
 * DEF USE_"MULT_TAB"
 * DEF TARGET_CPU 0 $ 5 $ 6
 * DFT TARGET_CPU==COMPILE_CPU && USE_MULT_TAB
 * DEP defined(__i386__) || defined(__i386) || defined(i386)
 *
 * DEF USE_MULT_TAB
 * DFT USE_MULT_TAB
 * DEP 1
 *
 * END
 */

#include "crc32.h"
#include "crack.h"

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <stdio.h>
#include <string.h>

extern u8 mult_tab[16384];

#undef  USE_GCC_X86_ASM
#define USE_GCC_X86_ASM (ARCH_i386 && USE_GCC_ASM && USE_MULT_TAB)

#undef  USE_GCC_X86_64_ASM
#define USE_GCC_X86_64_ASM (ARCH_x86_64 && USE_GCC_ASM && USE_MULT_TAB)

void init_crack_pw (void)
{
#if USE_MULT_TAB
  u16 t = 0;

  for (t = 0; t < 16384; t++)
    mult_tab[t] = ((t*4+3) * (t*4+2) >> 8) & 0xff;
#endif
}

int crack_pw (gen_func genfunc, callback_func cbfunc)
{
  int changed = -1;
  int crack_count = 0;
  u32 key_stack[(MAX_PW+1) * 3] = { 0x12345678UL, 0x23456789UL, 0x34567890UL };
  u32 *sp = NULL;
#if (USE_GCC_X86_ASM || USE_GCC_X86_64_ASM) && TARGET_CPU
  int dummy = 0; /* dummy output.  */
#endif

  sp = 0; /* to calm down dumb compilers */

  do
    {
      int count = file_count;
      int count2 = 0;
      u32 key0, key1, key2;
      u8 *p;
      u8 *b = files;
      
      if (changed < 0)
        {
          changed = (int)strlen ((const char *)pw);
          pw_end = pw + changed;
          sp = key_stack + changed * 3;
        }
      
      sp -= changed * 3;
      p = (u8 *)pw_end - changed;
      
      if (++crack_count >= 1000000 && verbosity)
        {
          printf ("checking pw %-40.40s\r", (const char *)pw);
          fflush (stdout);
          crack_count = 0;
        }
      
#  if USE_GCC_X86_64_ASM && TARGET_CPU
        asm("movq (%q7),%q0\n"
            "movq 16(%q7),%q1\n"
            "movq 24(%q7),%q2\n"
            "xorq %q3,%q3\n"
            "movb (%q5),%b3\n"
            "1:\n"
            "xorb %b0,%b3\n"
            "shrq $8,%q0\n"
            "incq %q5\n"
            "xorq (%c6,%q3,8),%q0\n"
            "movb %b0,%b3\n"
            "addq $24,%q7\n"
            "movq %q0,(%q7)\n"
            "addq %q1,%q3\n"
            "imul $134775813,%q3\n"
            "leaq 1(%q3),%q1\n"
            "shrq $24,%q3\n"
            "movq %q1,8(%q7)\n"
            "xorb %b2,%b3\n"
            "shrq $8,%q2\n"
            "xorq (%c6,%q3,8),%q2\n"
            "movb (%q5),%b3\n"
            "orb %b3,%b3\n"
            "movq %q2,8(%7)\n"
            "jnz 1b\n"
           : "=c" (key0), "=a" (key1), "=b" (key2), "=&d" (dummy), "=D" (sp)
           : "S" (p), "q" (crc_32_tab), "D" (sp)
        );
#  elif USE_GCC_X86_ASM && TARGET_CPU
      asm("movl (%7),%0\n"
          "movl 4(%7),%1\n"
          "movl 8(%7),%2\n"
          "xorl %3,%3\n"
          "movb (%5),%b3\n"
          "1:\n"
          "xorb %b0,%b3\n"
          "shrl $8,%0\n"
          "incl %5\n"
          "xorl %c6(,%3,4),%0\n"
          "movb %b0,%b3\n"
          "addl $12,%7\n"
          "movl %0,(%7)\n"
          "addl %1,%3\n"
          "imul $134775813,%3\n"
          "leal 1(%3),%1\n"
          "shrl $24,%3\n"
          "movl %1,4(%7)\n"
          "xorb %b2,%b3\n"
          "shrl $8,%2\n"
          "xorl %c6(,%3,4),%2\n"
          "movb (%5),%b3\n"
          "orb  %b3,%b3\n"
          "movl %2,8(%7)\n"
          "jnz  1b\n"
         : "=c" (key0), "=a" (key1), "=b" (key2), "=&d" (dummy), "=D" (sp)
         : "S" (p), "i" (crc_32_tab), "D" (sp)
      );
#  else
      key0 = *sp++;
      key1 = *sp++;
      key2 = *sp++;
      do {
        *sp++ = key0 = crc32 (key0, *p++);
        *sp++ = key1 = (key1 + (u8)key0) * 134775813 + 1;
        *sp++ = key2 = crc32 (key2, key1 >> 24);
      } while (*p);
      
      sp -= 3;
#  endif
      
      do
        {
          u8 target, pre_target;

#         if USE_GCC_X86_64_ASM && TARGET_CPU
            asm("movq $-24,%%rdi\n"
                "pushq %%rbx\n"
                "addq $24,%3\n"
                "pushq %%rcx\n"
                "xorq %%rdx,%%rdx\n"
                "pushq %%rbp\n"
                "jmp  2f\n"
                "1:\n"
                "shrq $2,%%rdx\n"
                "movb %b8,%%dl\n"
                "xorb -1(%3,%%rdi),%%dl\n"
#if TARGET_CPU == 6
                "movzbq %%dl,%%rbp\n"
#else
                "movq %%rdx,%%rbp\n"
#endif
                "xorb %b4,%%dl\n"
                "shrq $8,%q4\n"
#if TARGET_CPU == 6
                "movzbq %%dl,%%rdx\n"
#else
                "andq $0xff,%%rdx\n"
#endif
                "xorq (%c7,%%rdx,8),%q4\n"
#if TARGET_CPU == 6
                "movzbq %b4,%%rdx\n"
#else
                "movb %b4,%%dl\n"
#endif
                "addq %q5,%%rdx\n"
                "imul $134775813,%%rdx\n"
                "leaq 1(%%rdx),%q5\n"
                "shrq $24,%%rdx\n"
#if TARGET_CPU == 6
                "xorq %q6,%%rdx\n"
                "shrq $8,%q6\n"
                "movzbq %%dl,%%rdx\n"
#else
                "xorb %b6,%%dl\n"
                "shrq $8,%q6\n"
#endif
                "xorq (%c7,%%rdx,8),%q6\n"
"2:            \n"
#if TARGET_CPU == 6
                "movzwq %w6,%%rdx\n"
#else
                "movw %w6,%%dx\n"
#endif
                "shrq $q2,%%rdx\n"
                "movb %b8,%%dl\n"
                "xorb (%3,%%rdi),%%dl\n"
#if TARGET_CPU == 6
                "movzbq %%dl,%%rbp\n"
#else
                "movq %%rdx,%%rbp\n"
#endif
                "xorb %b4,%%dl\n"
                "shrq $8,%q4\n"
#if TARGET_CPU == 6
                "movzbq %%dl,%%rdx\n"
#else
                "andq $0xff,%%rdx\n"
#endif
                "xorq (%c7,%%rdx,8),%q4\n"
#if TARGET_CPU == 6
                "movzbq %b4,%%rdx\n"
#else
                "movb %b4,%%dl\n"
#endif
                "addq %q5,%%rdx\n"
                "imul $134775813,%%rdx\n"
                "leaq 1(%%rdx),%q5\n"
                "shrq $24,%%rdx\n"
#if TARGET_CPU == 6
                "xorq %q6,%%rdx\n"
                "shrq $8,%q6\n"
                "movzbq %%dl,%%rdx\n"
#else
                "xorb %b6,%%dl\n"
                "shrq $8,%q6\n"
#endif
                "xorq (%c7,%%rdx,8),%q6\n"
                "addq $2,%%rdi\n"
#if TARGET_CPU == 6
                "movzwq %w6,%%rdx\n"
#else
                "movw %w6,%%dx\n"
#endif
                "jne  1b\n"
#if TARGET_CPU == 6
                "movzwq %w6,%q6\n"
#else
                "andq $0xffff,%q6\n"
#endif
                "movb -1(%3),%1\n"
                "shrq $2,%q6\n"
                "movq %%rbp,%q2\n"
                "popq %%rbp\n"
                "popq %%rcx\n"
                "xorb %b8,%1\n"
                "popq %%rbx\n"
               : "=S" (b), "=a" (target), "=d" (pre_target)
               : "S" (b), "c" (key0), "a" (key1), "b" (key2),
                 "q" (crc_32_tab), "q" (mult_tab)
               : "rdi"
            );
#         elif USE_GCC_X86_ASM && TARGET_CPU
            asm("movl $-12,%%edi\n"
                "pushl %%ebx\n"
                "addl $12,%3\n"
                "pushl %%ecx\n"
                "xorl %%edx,%%edx\n"
                "pushl %%ebp\n"
                "jmp  2f\n"
                "1:\n"
                "shrl $2,%%edx\n"
                "movb %c8(%%edx),%%dl\n"
                "xorb -1(%3,%%edi),%%dl\n"
#if TARGET_CPU == 6
                "movzbl %%dl,%%ebp\n"
#else
                "movl %%edx,%%ebp\n"
#endif
                "xorb %b4,%%dl\n"
                "shrl $8,%4\n"
#if TARGET_CPU == 6
                "movzbl %%dl,%%edx\n"
#else
                "andl $0xff,%%edx\n"
#endif
                "xorl %c7(,%%edx,4),%4\n"
#if TARGET_CPU == 6
                "movzbl %b4,%%edx\n"
#else
                "movb %b4,%%dl\n"
#endif
                "addl %5,%%edx\n"
                "imul $134775813,%%edx\n"
                "leal 1(%%edx),%5\n"
                "shrl $24,%%edx\n"
#if TARGET_CPU == 6
                "xorl %6,%%edx\n"
                "shrl $8,%6\n"
                "movzbl %%dl,%%edx\n"
#else
                "xorb %b6,%%dl\n"
                "shrl $8,%6\n"
#endif
                "xorl %c7(,%%edx,4),%6\n"
"2:            \n"
#if TARGET_CPU == 6
                "movzwl %w6,%%edx\n"
#else
                "movw %w6,%%dx\n"
#endif
                "shrl $2,%%edx\n"
                "movb %c8(%%edx),%%dl\n"
                "xorb (%3,%%edi),%%dl\n"
#if TARGET_CPU == 6
                "movzbl %%dl,%%ebp\n"
#else
                "movl %%edx,%%ebp\n"
#endif
                "xorb %b4,%%dl\n"
                "shrl $8,%4\n"
#if TARGET_CPU == 6
                "movzbl %%dl,%%edx\n"
#else
                "andl $0xff,%%edx\n"
#endif
                "xorl %c7(,%%edx,4),%4\n"
#if TARGET_CPU == 6
                "movzbl %b4,%%edx\n"
#else
                "movb %b4,%%dl\n"
#endif
                "addl %5,%%edx\n"
                "imul $134775813,%%edx\n"
                "leal 1(%%edx),%5\n"
                "shrl $24,%%edx\n"
#if TARGET_CPU == 6
                "xorl %6,%%edx\n"
                "shrl $8,%6\n"
                "movzbl %%dl,%%edx\n"
#else
                "xorb %b6,%%dl\n"
                "shrl $8,%6\n"
#endif
                "xorl %c7(,%%edx,4),%6\n"
                "addl $2,%%edi\n"
#if TARGET_CPU == 6
                "movzwl %w6,%%edx\n"
#else
                "movw %w6,%%dx\n"
#endif
                "jne  1b\n"
#if TARGET_CPU == 6
                "movzwl %w6,%6\n"
#else
                "andl $0xffff,%6\n"
#endif
                "movb -1(%3),%1\n"
                "shrl $2,%6\n"
                "movl %%ebp,%k2\n"
                "popl %%ebp\n"
                "popl %%ecx\n"
                "xorb %c8(%6),%1\n"
                "popl %%ebx\n"
               : "=S" (b), "=a" (target), "=d" (pre_target)
               : "S" (b), "c" (key0), "a" (key1), "b" (key2),
                 "i" (crc_32_tab), "i" (mult_tab)
               : "edi"
            );
#         else
#           if !USE_MULT_TAB
              u16 t;
#           endif
            u32 kez0, kez1, kez2;
            u8 *e = b + FILE_SIZE - 1;
          
            kez0 = key0;
            kez1 = key1;
            kez2 = key2;

            do
              {
#               if USE_MULT_TAB
                  pre_target = *b++ ^ mult_tab [(u16)(kez2) >> 2];
#               else
                  t = kez2 | 2;
                  pre_target = *b++ ^ (u8)(((u16) (t * (t^1)) >> 8));
#               endif
                kez0 = crc32 (kez0, pre_target);
                kez1 = (kez1 + (u8)kez0) * 134775813 + 1;
                kez2 = crc32 (kez2, kez1 >> 24);
              }
            while (b < e);
            
#           if USE_MULT_TAB
              target = *b++ ^ mult_tab [(u16)(kez2) >> 2];
#           else
              t = kez2 | 2;
              target = *b++ ^ (u8)(((u16) (t * (t^1)) >> 8));
#           endif
#         endif

          /*printf ("pw=%s, t1=%02x, t2=%02x (%02x, %02x)\n", pw, target, pre_target, b[0], b[1]);*/
          
          if (target != *b++)
            goto out;
          
          if (pre_target == *b++)
            count2++;
        }
      while(--count);
      
      if ((changed = cbfunc ((const char *)pw, 0)))
         return changed;
      
      out: ;
    }
  while ((changed = genfunc ()));
  
  return 0;
}

