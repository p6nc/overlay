# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="GitHub on the command line."
HOMEPAGE="https://cli.github.com/"
SRC_URI="https://github.com/cli/cli/releases/download/v1.8.0/gh_1.8.0_linux_amd64.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

S="${PORTAGE_BUILDDIR}/work/gh_1.8.0_linux_amd64"

QA_PREBUILT="/opt/gh/gh"

src_install() {
	insinto /opt/gh
	doins bin/gh
	fperms +x /opt/gh/gh
	dosym /opt/gh/gh /usr/bin/gh
	doman share/man/man1/gh.1 share/man/man1/gh-alias.1 share/man/man1/gh-alias-delete.1 share/man/man1/gh-alias-list.1 share/man/man1/gh-alias-set.1 share/man/man1/gh-api.1 share/man/man1/gh-completion.1 share/man/man1/gh-config.1 share/man/man1/gh-config-get.1 share/man/man1/gh-config-set.1 share/man/man1/gh-gist.1 share/man/man1/gh-gist-create.1 share/man/man1/gh-issue.1 share/man/man1/gh-issue-close.1 share/man/man1/gh-issue-create.1 share/man/man1/gh-issue-list.1 share/man/man1/gh-issue-reopen.1 share/man/man1/gh-issue-status.1 share/man/man1/gh-issue-view.1 share/man/man1/gh-pr.1 share/man/man1/gh-pr-checkout.1 share/man/man1/gh-pr-close.1 share/man/man1/gh-pr-create.1 share/man/man1/gh-pr-diff.1 share/man/man1/gh-pr-list.1 share/man/man1/gh-pr-merge.1 share/man/man1/gh-pr-ready.1 share/man/man1/gh-pr-reopen.1 share/man/man1/gh-pr-review.1 share/man/man1/gh-pr-status.1 share/man/man1/gh-pr-view.1 share/man/man1/gh-repo.1 share/man/man1/gh-repo-clone.1 share/man/man1/gh-repo-create.1 share/man/man1/gh-repo-fork.1 share/man/man1/gh-repo-view.1
}
