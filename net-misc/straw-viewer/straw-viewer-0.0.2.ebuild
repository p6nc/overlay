EAPI=7

inherit desktop eutils perl-module xdg-utils

DESCRIPTION="A lightweight application for searching and streaming videos from YouTube, using the API of invidio.us."
HOMEPAGE="https://github.com/trizen/straw-viewer"
SRC_URI="https://github.com/trizen/straw-viewer/archive/0.0.2.tar.gz"

LICENSE="Artistic License 2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="better-stdin cache faster-json fixed-width gtk"

DEPEND="dev-perl/Module-Build
		dev-perl/libwww-perl
		dev-perl/LWP-Protocol-https
		dev-perl/Data-Dump
		dev-perl/JSON
		better-stdin? ( dev-perl/Term-ReadLine-Gnu )
		cache? ( dev-perl/LWP-UserAgent-Cached )
		faster-json? ( dev-perl/JSON-XS )
		fixed-width? ( || ( dev-perl/Unicode-LineBreak dev-perl/Text-CharWidth ) )
		gtk? (
			dev-perl/File-ShareDir
			dev-perl/Gtk3
		)"
RDEPEND="${DEPEND}"

src_configure() {
	local myconf
	if use gtk; then
		myconf="--gtk"
	fi
	perl-module_src_configure
}

src_install() {
	perl-module_src_install

	if use gtk; then
		domenu share/gtk-straw-viewer.desktop
		doicon share/icons/gtk-straw-viewer.png
	fi
}

pkg_postinst() {
	use gtk && xdg_icon_cache_update
}

pkg_postrm() {
	use gtk && xdg_icon_cache_update
}
