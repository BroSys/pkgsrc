# $NetBSD: Makefile,v 1.7 2013/05/31 12:40:36 wiz Exp $
#

DISTNAME=		Object-Event-1.23
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		2
CATEGORIES=		devel perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Object/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Object-Event/
COMMENT=		Perl 5 class that provides an event callback interface
LICENSE=		${PERL5_LICENSE}

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Object/Event/.packlist

DEPENDS+=	p5-AnyEvent>=3.5:../../devel/p5-AnyEvent
DEPENDS+=	p5-common-sense-[0-9]*:../../devel/p5-common-sense

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
