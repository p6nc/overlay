# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Fennel is a lisp that compiles to Lua. It aims to be easy to use, expressive, and has almost zero overhead compared to handwritten Lua."
HOMEPAGE="https://fennel-lang.org"
SRC_URI="https://git.sr.ht/~technomancy/fennel/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

src_install() {
    emake PREFIX="/usr" DESTDIR="${D}" install
    dodoc api.md changelog.md README.md rationale.md reference.md setup.md tutorial.md
    doman fennel.1
}
