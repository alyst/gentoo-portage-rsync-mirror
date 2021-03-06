# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/MooseX-Types-DateTimeX/MooseX-Types-DateTimeX-0.100.0.ebuild,v 1.1 2014/12/12 21:58:20 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=ECARROLL
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="Extensions to MooseX::Types::DateTime::ButMaintained"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/DateTimeX-Easy-0.85.0
	>=dev-perl/Moose-0.410.0
	>=dev-perl/MooseX-Types-0.40.0
	>=dev-perl/MooseX-Types-DateTime-ButMaintained-0.40.0
	>=dev-perl/Time-Duration-Parse-0.60.0
	>=dev-perl/namespace-clean-0.80.0
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		>=dev-perl/Test-use-ok-0.20.0
		>=dev-perl/Test-Exception-0.270.0
		virtual/perl-Test-Simple
	)
"

PATCHES=( "${FILESDIR}/${P}-test.patch" )

SRC_TEST=do
