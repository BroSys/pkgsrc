# $NetBSD: Makefile,v 1.10 2013/05/31 12:41:17 wiz Exp $

DISTNAME=	MIME-Lite-HTML-1.23
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MIME/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/MIME-Lite-HTML/
COMMENT=	Perl5 module to transform a HTML page into a MIME-Lite mail

DEPENDS+=	p5-MIME-Lite>=3.01:../../mail/p5-MIME-Lite
DEPENDS+=	p5-libwww>=5.805:../../www/p5-libwww
DEPENDS+=	p5-HTML-Parser-[0-9]*:../../www/p5-HTML-Parser
DEPENDS+=	p5-URI-[0-9]*:../../www/p5-URI

PERL5_PACKLIST=	auto/MIME/Lite/HTML/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
