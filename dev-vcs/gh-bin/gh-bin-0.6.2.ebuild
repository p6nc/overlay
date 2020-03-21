# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="GitHub on the command line."
HOMEPAGE="https://cli.github.com/"
SRC_URI="https://github.com/cli/cli/releases/download/v0.6.2/gh_0.6.2_linux_amd64.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

S="${PORTAGE_BUILDDIR}/work/gh_0.6.2_linux_amd64/bin"

QA_PREBUILT="/opt/gh/gh"

src_install() {
	insinto /opt/gh
	doins gh
	fperms +x /opt/gh/gh
	dosym /opt/gh/gh /usr/bin/gh
}
