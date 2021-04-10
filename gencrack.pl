#!/usr/bin/perl

require 5;

# LCL symbol...			localize symbols
# ARC arch			architecture symbol
# DFT cpp-expr			default method?
# DEF symbol alternatives...	specifiy alternatives
# DEP cpp-expr			when to apply these (which architecture &c)
# MTH name init crack load	new method independent of everything else
# LOD load			load method to use
# END				guess

$method_count=0;

while(<>) {
   if(/^\s+\*\s+(\w+)\s+(.*)$/) {
      $1 eq "END" and last;
      $1 eq "LCL" and do {
         @lcl=split /\s+/,$2;
      };
      $1 eq "ARC" and do {
         $arch=$2;
      };
      $1 eq "DFT" and do {
         $default=$2;
      };
      $1 eq "LOD" and do {
         $load=$2;
      };
      $1 eq "MTH" and do {
         my($name,$init,$crack,$load)=split /\s+/,$2;
         $methods .= "  { \"$name\", $init, $crack, $load },\n";
         $method_count++;
      };
      $1 eq "DEF" and do {
         my($def,$val)=split /\s+/,$2,2;
         my(@val);
         if($val) {
            @val=split /\s*\$\s*/,$val;
            for(@val) {
               $_=["# undef $def\n# define $def $_\n", ", $def=$_"];
            }
         } else {
            @val = (["# undef $def\n", ""], ["# define $def 1\n", ", $def"]);
         }
         $def{$def}=[@val];
      };
      $1 eq "DEP" and do {
         $method=$method_count;
         $def.="#elif $2\n";
         $tab.="#elif $2\n$methods";
         $def.="# define $arch 1\n" if $arch;
         gen_def("");
         $def.="# undef $arch\n" if $arch;
         undef $arch;
         undef $default;
         undef %def;
      };
   }
}

sub gen_def {
   my($sym)=(keys %def)[0];
   if($sym) {
      my($val)=delete $def{$sym};
      for(@{$val}) {
         gen_def($_[0].$_->[0],$_[1].$_->[1]);
      }
      $def{$sym}=$val;
   } else {
      $def.="# undef METHOD\n# define METHOD $method\n$_[0]";
      $tab.="  { \"zip$method$_[1]\"";
      for(@lcl) {
         $def.="# undef $_\n# define $_ METHOD${method}_$_\n";
         $tab.=", METHOD${method}_$_";
      }
      $tab.=", $load },\n";
      $def.="#  if $default\n#   define DEFAULT_METHOD $method\n#  endif\n" if $default;
      $def.="#  include \"zipcrack.c\"\n";
      $method++;
   }
}

##############################################################################

open C,">crackdef.c" or die "crackdef.c: $!";
print C <<EOF;
/*
 * this file is automatically generated from zipcrack.c, do NOT modify
 */

#if 0
$def#else
#warn no architecture compiled in
#endif

#ifndef DEFAULT_METHOD
#define DEFAULT_METHOD 0
#endif

int default_method = DEFAULT_METHOD;

crackmethod methods[] = {
#if 0
$tab#else
#endif
  { 0, 0, 0, 0 }
};

EOF
