# $NetBSD: Makefile,v 1.3 2013/06/16 23:06:10 asau Exp $

DISTNAME=	libWindowsWM-1.0.1
CATEGORIES=	wm x11
MASTER_SITES=	${MASTER_SITE_XORG:=lib/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	rodent@NetBSD.org
HOMEPAGE=	http://xorg.freedesktop.org/
COMMENT=	Cygwin/X rootless window management extension
LICENSE=	mit

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_LANGUAGES+=	c c++
USE_TOOLS+=	gsed pkg-config

PKGCONFIG_OVERRIDE+=	windowswm.pc.in

.include "../../x11/xextproto/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../wm/windowswmproto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
