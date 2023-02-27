# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.1.0.9999

CABAL_PN="ShellCheck-ChromiumOS"

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="ChromiumOS fork of ShellCheck"
HOMEPAGE="https://chromium.googlesource.com/chromiumos/third_party/shellcheck/"

SRC_COMMIT="47a94dcc454c77d3abe86117caa5de679ba8423c"
SRC_URI="
	https://chromium.googlesource.com/chromiumos/third_party/shellcheck/+archive/${SRC_COMMIT}.tar.gz
		-> ${P}.tar.gz
"

# Tarball contains source files at the root level
S="${WORKDIR}"
CABAL_FILE="${S}/${CABAL_PN}.cabal"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

PATCHES=(
	"${FILESDIR}/${PN}-0.8.0_pre20221202-rename-package.patch"
)

RDEPEND="
	dev-haskell/aeson:=[profile?]
	>=dev-haskell/diff-0.2.0:=[profile?]
	>=dev-haskell/parsec-3.0:=[profile?]
	>=dev-haskell/quickcheck-2.7.4:2=[profile?]
	dev-haskell/regex-tdfa:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"

src_prepare() {
	mv -v "${S}/ShellCheck.cabal" "${CABAL_FILE}" || die
	haskell-cabal_src_prepare
}

pkg_postinst() {
	# ensure to preserve the symlink before app-alternatives/tar
	# is installed
	if [[ ! -h ${EROOT}/bin/shellcheck ]]; then
		ln -s shellcheck-chromiumos "${EROOT}/bin/shellcheck" || die
	fi
}
