# $NetBSD: Makefile,v 1.6 2013/09/12 01:19:33 wen Exp $

DISTNAME=	Test-File-ShareDir-0.3.3
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5tfc
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Test-File-ShareDir/
COMMENT=	Perl5 module to create a fake ShareDir for module testing
LICENSE=	${PERL5_LICENSE}

PERL5_MODULE_TYPE=	Module::Build

BUILD_DEPENDS+=	p5-Module-Build>=0.40040:../../devel/p5-Module-Build

DEPENDS+=	p5-File-Copy-Recursive-[0-9]*:../../sysutils/p5-File-Copy-Recursive
DEPENDS+=	p5-File-ShareDir>=1.00:../../devel/p5-File-ShareDir
DEPENDS+=	p5-Path-Tiny-[0-9]*:../../filesystems/p5-Path-Tiny

BUILD_DEPENDS+=	p5-Test-Fatal-[0-9]*:../../devel/p5-Test-Fatal
BUILD_DEPENDS+=	{perl>=5.14.1,p5-Test-Simple>=0.96}:../../devel/p5-Test-Simple

PERL5_PACKLIST=		auto/Test/File/ShareDir/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
