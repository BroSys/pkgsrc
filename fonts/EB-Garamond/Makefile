# $NetBSD: Makefile,v 1.5 2014/04/24 09:02:54 wiz Exp $

DISTNAME=	EBGaramond-0.016
CATEGORIES=	fonts
MASTER_SITES=	https://bitbucket.org/georgd/eb-garamond/downloads/
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.georgduffner.at/ebgaramond/
COMMENT=	Egenolff-Berner Garamond font
LICENSE=	ofl-v1.1

FONTS_DIRS.ttf=		lib/X11/fonts/OTF
DOCDIR=		share/doc/EBGaramond
INSTALLATION_DIRS=	${FONTS_DIRS.ttf} ${DOCDIR}
NO_CONFIGURE=	yes
NO_BUILD=	yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/otf/* ${DESTDIR}${PREFIX}/${FONTS_DIRS.ttf}
	${INSTALL_DATA} ${WRKSRC}/specimen/* ${DESTDIR}${PREFIX}/${DOCDIR}

.include "../../mk/bsd.pkg.mk"
