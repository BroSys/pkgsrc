# $NetBSD: Makefile,v 1.1 2014/04/04 02:33:40 wen Exp $

DISTNAME=	Devel-CheckCompiler-0.05
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Devel/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Devel-CheckCompiler/
COMMENT=	Check the compiler availability
LICENSE=	${PERL5_LICENSE}

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=		auto/Devel/CheckCompiler/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
