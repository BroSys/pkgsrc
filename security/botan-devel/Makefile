# $NetBSD: Makefile,v 1.2 2014/03/05 21:22:38 joerg Exp $

DISTNAME=	Botan-1.11.8
PKGNAME=	${DISTNAME:tl}
CATEGORIES=	security
MASTER_SITES=	http://files.randombit.net/botan/
EXTRACT_SUFX=	.tbz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://botan.randombit.net/
COMMENT=	Portable, easy to use, and efficient C++ crypto library
LICENSE=	2-clause-bsd

HAS_CONFIGURE=		yes
USE_LANGUAGES=		c++

PYTHON_FOR_BUILD_ONLY=	yes

CONFIG_SHELL=		${PYTHONBIN}
CONFIGURE_SCRIPT=	./configure.py
CONFIGURE_ARGS+=	--prefix=${PREFIX} --with-zlib --with-boost

.include "../../mk/compiler.mk"
.if !empty(PKGSRC_COMPILER:Mclang)
CONFIGURE_ARGS+=	--cc-bin=${CXX} --cc=clang
.endif

MAKE_FLAGS+=	LIB_OPT=${CXXFLAGS:Q}

USE_TOOLS+=	gmake

.include "../../devel/zlib/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
