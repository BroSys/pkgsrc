# $NetBSD: Makefile,v 1.23 2014/04/10 06:21:20 obache Exp $

DISTNAME=	analitza-${_KDE_VERSION}
PKGREVISION=	2
CATEGORIES=	math
COMMENT=	KDE library for mathematical features

.include "../../meta-pkgs/kde4/Makefile.kde4"

BROKEN_READLINE_DETECTION=	yes

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../devel/readline/buildlink3.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
