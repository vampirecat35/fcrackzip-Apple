# Makefile.in generated by automake 1.7.9 from Makefile.am.
# Makefile.  Generated from Makefile.in by configure.

# Copyright 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003
# Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



srcdir = .
top_srcdir = .

pkgdatadir = $(datadir)/fcrackzip
pkglibdir = $(libdir)/fcrackzip
pkgincludedir = $(includedir)/fcrackzip
top_builddir = .

am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
INSTALL = /usr/bin/install -c
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
ACLOCAL = ${SHELL} /Users/andyvand/Downloads/fcrackzip/missing --run aclocal-1.7
AMDEP_FALSE = #
AMDEP_TRUE = 
AMTAR = ${SHELL} /Users/andyvand/Downloads/fcrackzip/missing --run tar
AUTOCONF = ${SHELL} /Users/andyvand/Downloads/fcrackzip/missing --run autoconf
AUTOHEADER = ${SHELL} /Users/andyvand/Downloads/fcrackzip/missing --run autoheader
AUTOMAKE = ${SHELL} /Users/andyvand/Downloads/fcrackzip/missing --run automake-1.7
AWK = awk
CC = gcc
CCDEPMODE = depmode=gcc3
CFLAGS = -g -O2 -funroll-all-loops -O3
CPP = gcc -E
CPPFLAGS = 
CYGPATH_W = echo
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
ECHO_C = \c
ECHO_N = 
ECHO_T = 
EGREP = /usr/bin/grep -E
EXEEXT = 
GREP = /usr/bin/grep
HAVE_PERL_FALSE = #
HAVE_PERL_TRUE = 
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = ${SHELL} $(install_sh) -c -s
LDFLAGS = 
LIBOBJS = 
LIBS = /usr/local/lib/libunzip.a -lbz2 -lz
LTLIBOBJS = 
MAKEINFO = ${SHELL} /Users/andyvand/Downloads/fcrackzip/missing --run makeinfo
OBJEXT = o
PACKAGE = fcrackzip
PACKAGE_BUGREPORT = 
PACKAGE_NAME = 
PACKAGE_STRING = 
PACKAGE_TARNAME = 
PACKAGE_VERSION = 
PATH_SEPARATOR = :
PERL = perl
SET_MAKE = 
SHELL = /bin/sh
STRIP = 
VERSION = 1.0
ac_ct_CC = gcc
am__fastdepCC_FALSE = #
am__fastdepCC_TRUE = 
am__include = include
am__leading_dot = .
am__quote = 
bindir = ${exec_prefix}/bin
build_alias = 
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE}
dvidir = ${docdir}
exec_prefix = ${prefix}
host_alias = 
htmldir = ${docdir}
includedir = ${prefix}/include
infodir = ${datarootdir}/info
install_sh = /Users/andyvand/Downloads/fcrackzip/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localedir = ${datarootdir}/locale
localstatedir = ${prefix}/var
mandir = ${datarootdir}/man
oldincludedir = /usr/include
pdfdir = ${docdir}
prefix = /usr/local
program_transform_name = s,x,x,
psdir = ${docdir}
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
sysconfdir = ${prefix}/etc
target_alias = 
AUTOMAKE_OPTIONS = gnits

EXTRA_DIST = fcrackzip.txt fcrackzip.html fcrackzip.1 gencrack.pl zipcrack.c cpmask.c crackdef.c noradi.zip


# next line is for pgcc/egcs/gcc-2.8
#CFLAGS = -O6 -mpentiumpro -march=pentiumpro  -g -Wall
#CFLAGS = -g -O2 -funroll-all-loops -O3
#LDFLAGS = -g
man_MANS = fcrackzip.1
bin_PROGRAMS = fcrackzip zipinfo
noinst_HEADERS = getopt.h
fcrackzip_SOURCES = main.c crack.c crack.h crc32.h
fcrackzip_LDADD = 
zipinfo_SOURCES = zipinfo.c
zipinfo_LDADD = 
subdir = .
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = config.h
CONFIG_CLEAN_FILES =
bin_PROGRAMS = fcrackzip$(EXEEXT) zipinfo$(EXEEXT)
PROGRAMS = $(bin_PROGRAMS)

am_fcrackzip_OBJECTS = main.$(OBJEXT) crack.$(OBJEXT)
fcrackzip_OBJECTS = $(am_fcrackzip_OBJECTS)
fcrackzip_DEPENDENCIES = 
fcrackzip_LDFLAGS =
am_zipinfo_OBJECTS = zipinfo.$(OBJEXT)
zipinfo_OBJECTS = $(am_zipinfo_OBJECTS)
zipinfo_DEPENDENCIES = 
zipinfo_LDFLAGS =

DEFAULT_INCLUDES =  -I. -I$(srcdir) -I.
depcomp = $(SHELL) $(top_srcdir)/depcomp
am__depfiles_maybe = depfiles
DEP_FILES = $(DEPDIR)/getopt.Po $(DEPDIR)/getopt1.Po \
	./$(DEPDIR)/crack.Po ./$(DEPDIR)/main.Po \
	./$(DEPDIR)/zipinfo.Po
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
	$(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
CCLD = $(CC)
LINK = $(CCLD) $(AM_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) $(LDFLAGS) -o $@
DIST_SOURCES = $(fcrackzip_SOURCES) $(zipinfo_SOURCES)

NROFF = nroff
MANS = $(man_MANS)
HEADERS = $(noinst_HEADERS)

DIST_COMMON = README $(noinst_HEADERS) $(srcdir)/Makefile.in \
	$(srcdir)/configure AUTHORS COPYING ChangeLog INSTALL \
	Makefile.am NEWS THANKS TODO aclocal.m4 config.h.in configure \
	configure.in depcomp getopt.c getopt1.c install-sh missing \
	mkinstalldirs
SOURCES = $(fcrackzip_SOURCES) $(zipinfo_SOURCES)

all: config.h
	$(MAKE) $(AM_MAKEFLAGS) all-am

.SUFFIXES:
.SUFFIXES: .c .o .obj

am__CONFIG_DISTCLEAN_FILES = config.status config.cache config.log \
 configure.lineno
$(srcdir)/Makefile.in:  Makefile.am  $(top_srcdir)/configure.in $(ACLOCAL_M4)
	cd $(top_srcdir) && \
	  $(AUTOMAKE) --gnits  Makefile
Makefile:  $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe)

$(top_builddir)/config.status: $(srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	$(SHELL) ./config.status --recheck
$(srcdir)/configure:  $(srcdir)/configure.in $(ACLOCAL_M4) $(CONFIGURE_DEPENDENCIES)
	cd $(srcdir) && $(AUTOCONF)

$(ACLOCAL_M4):  configure.in 
	cd $(srcdir) && $(ACLOCAL) $(ACLOCAL_AMFLAGS)

config.h: stamp-h1
	@if test ! -f $@; then \
	  rm -f stamp-h1; \
	  $(MAKE) stamp-h1; \
	else :; fi

stamp-h1: $(srcdir)/config.h.in $(top_builddir)/config.status
	@rm -f stamp-h1
	cd $(top_builddir) && $(SHELL) ./config.status config.h

$(srcdir)/config.h.in:  $(top_srcdir)/configure.in $(ACLOCAL_M4) 
	cd $(top_srcdir) && $(AUTOHEADER)
	touch $(srcdir)/config.h.in

distclean-hdr:
	-rm -f config.h stamp-h1
binPROGRAMS_INSTALL = $(INSTALL_PROGRAM)
install-binPROGRAMS: $(bin_PROGRAMS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(bindir)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  p1=`echo $$p|sed 's/$(EXEEXT)$$//'`; \
	  if test -f $$p \
	  ; then \
	    f=`echo "$$p1" | sed 's,^.*/,,;$(transform);s/$$/$(EXEEXT)/'`; \
	   echo " $(INSTALL_PROGRAM_ENV) $(binPROGRAMS_INSTALL) $$p $(DESTDIR)$(bindir)/$$f"; \
	   $(INSTALL_PROGRAM_ENV) $(binPROGRAMS_INSTALL) $$p $(DESTDIR)$(bindir)/$$f || exit 1; \
	  else :; fi; \
	done

uninstall-binPROGRAMS:
	@$(NORMAL_UNINSTALL)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  f=`echo "$$p" | sed 's,^.*/,,;s/$(EXEEXT)$$//;$(transform);s/$$/$(EXEEXT)/'`; \
	  echo " rm -f $(DESTDIR)$(bindir)/$$f"; \
	  rm -f $(DESTDIR)$(bindir)/$$f; \
	done

clean-binPROGRAMS:
	-test -z "$(bin_PROGRAMS)" || rm -f $(bin_PROGRAMS)

installcheck-binPROGRAMS: $(bin_PROGRAMS)
	bad=0; pid=$$$$; list="$(bin_PROGRAMS)"; for p in $$list; do \
	  case ' $(AM_INSTALLCHECK_STD_OPTIONS_EXEMPT) ' in \
	   *" $$p "* | *" $(srcdir)/$$p "*) continue;; \
	  esac; \
	  f=`echo "$$p" | \
	     sed 's,^.*/,,;s/$(EXEEXT)$$//;$(transform);s/$$/$(EXEEXT)/'`; \
	  for opt in --help --version; do \
	    if $(DESTDIR)$(bindir)/$$f $$opt > c$${pid}_.out 2> c$${pid}_.err \
	         && test -n "`cat c$${pid}_.out`" \
	         && test -z "`cat c$${pid}_.err`"; then :; \
	    else echo "$$f does not support $$opt" 1>&2; bad=1; fi; \
	  done; \
	done; rm -f c$${pid}_.???; exit $$bad
fcrackzip$(EXEEXT): $(fcrackzip_OBJECTS) $(fcrackzip_DEPENDENCIES) 
	@rm -f fcrackzip$(EXEEXT)
	$(LINK) $(fcrackzip_LDFLAGS) $(fcrackzip_OBJECTS) $(fcrackzip_LDADD) $(LIBS)
zipinfo$(EXEEXT): $(zipinfo_OBJECTS) $(zipinfo_DEPENDENCIES) 
	@rm -f zipinfo$(EXEEXT)
	$(LINK) $(zipinfo_LDFLAGS) $(zipinfo_OBJECTS) $(zipinfo_LDADD) $(LIBS)

mostlyclean-compile:
	-rm -f *.$(OBJEXT) core *.core

distclean-compile:
	-rm -f *.tab.c

include $(DEPDIR)/getopt.Po
include $(DEPDIR)/getopt1.Po
include ./$(DEPDIR)/crack.Po
include ./$(DEPDIR)/main.Po
include ./$(DEPDIR)/zipinfo.Po

.c.o:
	if $(COMPILE) -MT $@ -MD -MP -MF "$(DEPDIR)/$*.Tpo" \
	  -c -o $@ `test -f '$<' || echo '$(srcdir)/'`$<; \
	then mv -f "$(DEPDIR)/$*.Tpo" "$(DEPDIR)/$*.Po"; \
	else rm -f "$(DEPDIR)/$*.Tpo"; exit 1; \
	fi
#	source='$<' object='$@' libtool=no \
#	depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' \
#	$(CCDEPMODE) $(depcomp) \
#	$(COMPILE) -c `test -f '$<' || echo '$(srcdir)/'`$<

.c.obj:
	if $(COMPILE) -MT $@ -MD -MP -MF "$(DEPDIR)/$*.Tpo" \
	  -c -o $@ `if test -f '$<'; then $(CYGPATH_W) '$<'; else $(CYGPATH_W) '$(srcdir)/$<'; fi`; \
	then mv -f "$(DEPDIR)/$*.Tpo" "$(DEPDIR)/$*.Po"; \
	else rm -f "$(DEPDIR)/$*.Tpo"; exit 1; \
	fi
#	source='$<' object='$@' libtool=no \
#	depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' \
#	$(CCDEPMODE) $(depcomp) \
#	$(COMPILE) -c `if test -f '$<'; then $(CYGPATH_W) '$<'; else $(CYGPATH_W) '$(srcdir)/$<'; fi`
uninstall-info-am:

man1dir = $(mandir)/man1
install-man1: $(man1_MANS) $(man_MANS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(man1dir)
	@list='$(man1_MANS) $(dist_man1_MANS) $(nodist_man1_MANS)'; \
	l2='$(man_MANS) $(dist_man_MANS) $(nodist_man_MANS)'; \
	for i in $$l2; do \
	  case "$$i" in \
	    *.1*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  if test -f $(srcdir)/$$i; then file=$(srcdir)/$$i; \
	  else file=$$i; fi; \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  case "$$ext" in \
	    1*) ;; \
	    *) ext='1' ;; \
	  esac; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed -e 's/^.*\///'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " $(INSTALL_DATA) $$file $(DESTDIR)$(man1dir)/$$inst"; \
	  $(INSTALL_DATA) $$file $(DESTDIR)$(man1dir)/$$inst; \
	done
uninstall-man1:
	@$(NORMAL_UNINSTALL)
	@list='$(man1_MANS) $(dist_man1_MANS) $(nodist_man1_MANS)'; \
	l2='$(man_MANS) $(dist_man_MANS) $(nodist_man_MANS)'; \
	for i in $$l2; do \
	  case "$$i" in \
	    *.1*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  case "$$ext" in \
	    1*) ;; \
	    *) ext='1' ;; \
	  esac; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed -e 's/^.*\///'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " rm -f $(DESTDIR)$(man1dir)/$$inst"; \
	  rm -f $(DESTDIR)$(man1dir)/$$inst; \
	done

ETAGS = etags
ETAGSFLAGS =

CTAGS = ctags
CTAGSFLAGS =

tags: TAGS

ID: $(HEADERS) $(SOURCES) $(LISP) $(TAGS_FILES)
	list='$(SOURCES) $(HEADERS) $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	mkid -fID $$unique

TAGS:  $(HEADERS) $(SOURCES) config.h.in $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	tags=; \
	here=`pwd`; \
	list='$(SOURCES) $(HEADERS) config.h.in $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	test -z "$(ETAGS_ARGS)$$tags$$unique" \
	  || $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	     $$tags $$unique

ctags: CTAGS
CTAGS:  $(HEADERS) $(SOURCES) config.h.in $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	tags=; \
	here=`pwd`; \
	list='$(SOURCES) $(HEADERS) config.h.in $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	test -z "$(CTAGS_ARGS)$$tags$$unique" \
	  || $(CTAGS) $(CTAGSFLAGS) $(AM_CTAGSFLAGS) $(CTAGS_ARGS) \
	     $$tags $$unique

GTAGS:
	here=`$(am__cd) $(top_builddir) && pwd` \
	  && cd $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) $$here

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH tags
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)

top_distdir = .
distdir = $(PACKAGE)-$(VERSION)

am__remove_distdir = \
  { test ! -d $(distdir) \
    || { find $(distdir) -type d ! -perm -200 -exec chmod u+w {} ';' \
         && rm -fr $(distdir); }; }

GZIP_ENV = --best
distuninstallcheck_listfiles = find . -type f -print
distcleancheck_listfiles = find . -type f -print

distdir: $(DISTFILES)
	@case `sed 15q $(srcdir)/NEWS` in \
	*"$(VERSION)"*) : ;; \
	*) \
	  echo "NEWS not updated; not releasing" 1>&2; \
	  exit 1;; \
	esac
	$(am__remove_distdir)
	mkdir $(distdir)
	@srcdirstrip=`echo "$(srcdir)" | sed 's|.|.|g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's|.|.|g'`; \
	list='$(DISTFILES)'; for file in $$list; do \
	  case $$file in \
	    $(srcdir)/*) file=`echo "$$file" | sed "s|^$$srcdirstrip/||"`;; \
	    $(top_srcdir)/*) file=`echo "$$file" | sed "s|^$$topsrcdirstrip/|$(top_builddir)/|"`;; \
	  esac; \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  dir=`echo "$$file" | sed -e 's,/[^/]*$$,,'`; \
	  if test "$$dir" != "$$file" && test "$$dir" != "."; then \
	    dir="/$$dir"; \
	    $(mkinstalldirs) "$(distdir)$$dir"; \
	  else \
	    dir=''; \
	  fi; \
	  if test -d $$d/$$file; then \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -pR $(srcdir)/$$file $(distdir)$$dir || exit 1; \
	    fi; \
	    cp -pR $$d/$$file $(distdir)$$dir || exit 1; \
	  else \
	    test -f $(distdir)/$$file \
	    || cp -p $$d/$$file $(distdir)/$$file \
	    || exit 1; \
	  fi; \
	done
	-find $(distdir) -type d ! -perm -777 -exec chmod a+rwx {} \; -o \
	  ! -type d ! -perm -444 -links 1 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -400 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -444 -exec $(SHELL) $(install_sh) -c -m a+r {} {} \; \
	|| chmod -R a+r $(distdir)
dist-gzip: distdir
	$(AMTAR) chof - $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(am__remove_distdir)

dist dist-all: distdir
	$(AMTAR) chof - $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(am__remove_distdir)

# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	$(am__remove_distdir)
	GZIP=$(GZIP_ENV) gunzip -c $(distdir).tar.gz | $(AMTAR) xf -
	chmod -R a-w $(distdir); chmod a+w $(distdir)
	mkdir $(distdir)/_build
	mkdir $(distdir)/_inst
	chmod a-w $(distdir)
	dc_install_base=`$(am__cd) $(distdir)/_inst && pwd | sed -e 's,^[^:\\/]:[\\/],/,'` \
	  && dc_destdir="$${TMPDIR-/tmp}/am-dc-$$$$/" \
	  && cd $(distdir)/_build \
	  && ../configure --srcdir=.. --prefix="$$dc_install_base" \
	    $(DISTCHECK_CONFIGURE_FLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) dvi \
	  && $(MAKE) $(AM_MAKEFLAGS) check \
	  && $(MAKE) $(AM_MAKEFLAGS) install \
	  && $(MAKE) $(AM_MAKEFLAGS) installcheck \
	  && $(MAKE) $(AM_MAKEFLAGS) uninstall \
	  && $(MAKE) $(AM_MAKEFLAGS) distuninstallcheck_dir="$$dc_install_base" \
	        distuninstallcheck \
	  && chmod -R a-w "$$dc_install_base" \
	  && ({ \
	       (cd ../.. && $(mkinstalldirs) "$$dc_destdir") \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" install \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" uninstall \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" \
	            distuninstallcheck_dir="$$dc_destdir" distuninstallcheck; \
	      } || { rm -rf "$$dc_destdir"; exit 1; }) \
	  && rm -rf "$$dc_destdir" \
	  && $(MAKE) $(AM_MAKEFLAGS) dist-gzip \
	  && rm -f $(distdir).tar.gz \
	  && $(MAKE) $(AM_MAKEFLAGS) distcleancheck
	$(am__remove_distdir)
	@echo "$(distdir).tar.gz is ready for distribution" | \
	  sed 'h;s/./=/g;p;x;p;x'
distuninstallcheck:
	@cd $(distuninstallcheck_dir) \
	&& test `$(distuninstallcheck_listfiles) | wc -l` -le 1 \
	   || { echo "ERROR: files left after uninstall:" ; \
	        if test -n "$(DESTDIR)"; then \
	          echo "  (check DESTDIR support)"; \
	        fi ; \
	        $(distuninstallcheck_listfiles) ; \
	        exit 1; } >&2
distcleancheck: distclean
	@if test '$(srcdir)' = . ; then \
	  echo "ERROR: distcleancheck can only run from a VPATH build" ; \
	  exit 1 ; \
	fi
	@test `$(distcleancheck_listfiles) | wc -l` -eq 0 \
	  || { echo "ERROR: files left in build directory after distclean:" ; \
	       $(distcleancheck_listfiles) ; \
	       exit 1; } >&2
check-am: all-am
check: check-am
all-am: Makefile $(PROGRAMS) $(MANS) $(HEADERS) config.h

installdirs:
	$(mkinstalldirs) $(DESTDIR)$(bindir) $(DESTDIR)$(man1dir)
install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	  install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	  `test -z '$(STRIP)' || \
	    echo "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'"` install
mostlyclean-generic:

clean-generic:

distclean-generic:
	-rm -f $(CONFIG_CLEAN_FILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean: clean-am

clean-am: clean-binPROGRAMS clean-generic mostlyclean-am

distclean: distclean-am
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -rf $(DEPDIR) ./$(DEPDIR)
	-rm -f Makefile
distclean-am: clean-am distclean-compile distclean-generic distclean-hdr \
	distclean-tags

dvi: dvi-am

dvi-am:

info: info-am

info-am:

install-data-am: install-man

install-exec-am: install-binPROGRAMS

install-info: install-info-am

install-man: install-man1

installcheck-am: installcheck-binPROGRAMS

maintainer-clean: maintainer-clean-am
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -rf $(top_srcdir)/autom4te.cache
	-rm -rf $(DEPDIR) ./$(DEPDIR)
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-compile mostlyclean-generic

pdf: pdf-am

pdf-am:

ps: ps-am

ps-am:

uninstall-am: uninstall-binPROGRAMS uninstall-info-am uninstall-man

uninstall-man: uninstall-man1

.PHONY: CTAGS GTAGS all all-am check check-am clean clean-binPROGRAMS \
	clean-generic ctags dist dist-all dist-gzip distcheck distclean \
	distclean-compile distclean-generic distclean-hdr \
	distclean-tags distcleancheck distdir distuninstallcheck dvi \
	dvi-am info info-am install install-am install-binPROGRAMS \
	install-data install-data-am install-exec install-exec-am \
	install-info install-info-am install-man install-man1 \
	install-strip installcheck installcheck-am \
	installcheck-binPROGRAMS installdirs maintainer-clean \
	maintainer-clean-generic mostlyclean mostlyclean-compile \
	mostlyclean-generic pdf pdf-am ps ps-am tags uninstall \
	uninstall-am uninstall-binPROGRAMS uninstall-info-am \
	uninstall-man uninstall-man1


crack.c: crackdef.c

crackdef.c: zipcrack.c gencrack.pl
	perl gencrack.pl zipcrack.c
#.PRECIOUS: crack.h crackd.c

%.txt: %.1 Makefile.am
	nroff -mandoc <$< >$@

%.html: %.1 Makefile.am
	myman2html $< >$@

bin-strip: all
	strip fcrackzip

# everything below is maintainer-only!
copy-www: fcrackzip.txt fcrackzip.html fcrackzip bin-strip dist
	./myman2html fcrackzip.1 | tail +3 | tac | tail +7 | tac >/root/www/nh/fcrackzip.1.nh
	mv fcrackzip-$(VERSION).tar.gz /root/www/src/marc/data/
	cp fcrackzip /root/www/src/marc/data/fcrackzip-$(VERSION).linux86.bin
	gzip -9fv /root/www/src/marc/data/fcrackzip-$(VERSION).linux86.bin
	chmod 644 /root/www/src/marc/data/fcrackzip-$(VERSION).tar.gz
	chmod 644 /root/www/src/marc/data/fcrackzip-$(VERSION).linux86.bin.gz
	echo -n $(VERSION) >/root/www/nh/fcrackzip-ver.nh

test: all
	fcrackzip --benchmark
# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
