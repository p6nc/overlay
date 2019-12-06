# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Yet another VTE wrapper. This time made and customized by me."
HOMEPAGE="https://github.com/Phate6660/term"
SRC_URI="https://github.com/Phate6660/term/archive/master.zip"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=x11-libs/vte-0.54.4"
RDEPEND="${DEPEND}"
BDEPEND=""

#src_install() {
#	dobin valleyTERM
#}

