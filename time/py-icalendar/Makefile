# $NetBSD: Makefile,v 1.17 2014/01/19 09:12:17 wiz Exp $

DISTNAME=	icalendar-3.6.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	time python
MASTER_SITES=	http://pypi.python.org/packages/source/i/icalendar/

MAINTAINER=	mj@turner.org.za
HOMEPAGE=	http://icalendar.readthedocs.org/en/latest/
COMMENT=	Python parser/generator for iCalendar files, as per RFC2445
LICENSE=	2-clause-bsd

DEPENDS+=	${PYPKGPREFIX}-pytz-[0-9]*:../../time/py-pytz

PYTHON_VERSIONED_DEPENDENCIES=  dateutil

USE_LANGUAGES=	# empty

.include "../../lang/python/egg.mk"
.include "../../lang/python/versioned_dependencies.mk"
.include "../../mk/bsd.pkg.mk"
