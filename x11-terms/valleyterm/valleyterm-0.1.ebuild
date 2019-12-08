# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Yet another VTE wrapper. This time made and customized by me."
HOMEPAGE="https://github.com/Phate6660/term"
SRC_URI="https://github.com/Phate6660/term/archive/master.zip"

S=${WORKDIR}/term-master

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

# TODO: Sources are supplied in a zip. We need to depend on that
DEPEND=">=x11-libs/vte-0.54.4"
RDEPEND="${DEPEND}"
BDEPEND=""

# Should not need to modify the default compile function.
#src_compile() {
#	emake || die "emake failed"
#}

# Modify the default install function so we need not worry about
# the 'make install' target.
src_install() {
	#emake INSTDIR="${D}" install
	dobin valleyterm
}

