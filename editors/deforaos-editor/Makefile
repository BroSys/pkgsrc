# $NetBSD: Makefile,v 1.10 2014/04/17 20:18:23 joerg Exp $

DISTNAME=	Editor-0.3.0
PKGNAME=	deforaos-editor-0.3.0
CATEGORIES=	editors
MASTER_SITES=	http://www.defora.org/os/download/download/4326/

MAINTAINER=	khorben@defora.org
HOMEPAGE=	http://www.defora.org/
COMMENT=	DeforaOS desktop text editor

LICENSE=	gnu-gpl-v3

USE_TOOLS+=	pkg-config
USE_TOOLS+=	xgettext

MAKE_FLAGS+=	DESTDIR=${DESTDIR}
MAKE_FLAGS+=	PREFIX=${PREFIX}
AUTO_MKDIRS=	yes

.include "../../mk/bsd.prefs.mk"

.if ${PKGMANDIR} != "share/man"
post-install:
	${MV} ${DESTDIR}${PREFIX}/share/man/man1/editor.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/editor.1
	${MV} ${DESTDIR}${PREFIX}/share/man/man1/filter.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/filter.1
	${RMDIR} ${DESTDIR}${PREFIX}/share/man/man1
	${RMDIR} ${DESTDIR}${PREFIX}/share/man
.endif

.include "options.mk"

BUILD_DEPENDS+=	docbook-xsl-[0-9]*:../../textproc/docbook-xsl
TOOL_DEPENDS+=	libxslt-[0-9]*:../../textproc/libxslt

.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../textproc/libxslt/xsltproc-nonet.mk"
.include "../../x11/deforaos-libdesktop/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
