# $NetBSD: Makefile,v 1.7 2014/03/18 15:34:04 mef Exp $
.include		"../../cross/nios2/Makefile.common"
PKGNAME=		nios2-binutils-${PKG_VERSION}
PKG_VERSION=		2.23

MAINTAINER=		pkgsrc-users@NetBSD.org
#HOMEPAGE=
COMMENT=		GNU binutils for Altera FPGA Nios2 processor
LICENSE=		gnu-gpl-v3

GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes
WRKSRC=			${WRKDIR}/binutils-2013.05

USE_TOOLS+=		ksh gettext gmake makeinfo perl tar automake autoconf gawk
USE_LIBTOOL=		yes
USE_LANGUAGES+=		c c++
BUILD_DEFS+=		${NIOS_INFO_DIR}

CONFIGURE_ARGS+=	--disable-nls
# install libiberty by architecture
GNU_CONFIGURE_LIBDIR=	${PREFIX}/${NIOS2_TARGET}/lib

.include "../../mk/compiler.mk"
.if !empty(PKGSRC_COMPILER:Mclang)
CFLAGS+=	-Wno-string-plus-int -Wno-self-assign
.endif

# To avoid conflict with other cross/native info files,
NIOS_INFO_DIR=		${PREFIX}/info/${NIOS2_TARGET}
.include "../../mk/bsd.prefs.mk"
INFO_DIR?=		${NIOS_INFO_DIR}

# CONFIGURE_ARGS+=	--infodir=
#  doesn't make it, will be overridden by following variables
#  see mk/configure/gnu-configure.mk
GNU_CONFIGURE_INFODIR=	${NIOS_INFO_DIR}

.include "options.mk"

do-extract:
	(cd ${WRKDIR}; tar jxf ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX}	\
	        sourceryg++-2013.05-43-nios2-linux-gnu/binutils-2013.05-43.tar.bz2;\
	tar jxf sourceryg++-2013.05-43-nios2-linux-gnu/binutils-2013.05-43.tar.bz2;\
	)

# following file installed is reference only, not used at all for the moment
post-install:
	${INSTALL_DATA} files/nios2elf-netbsd.x ${DESTDIR}${PREFIX}/${NIOS2_TARGET}/lib/ldscripts

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
CONFIGURE_ENV+=		PATH=${CROSSBASE}/bin:${PATH}

# ./configure.lineno: 3238: Syntax error: "else" unexpected
#  gmake[1]: *** [configure-gas] Error 1
PKGSRC_MAKE_ENV+=	SH=/bin/ksh
