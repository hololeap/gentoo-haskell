# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999
#hackport: flags: -in-ghc-tree

CABAL_FEATURES="" # broken test-suite
inherit haskell-cabal

DESCRIPTION="A documentation-generation tool for Haskell libraries"
HOMEPAGE="https://www.haskell.org/haddock/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
# keep in sync with ghc-8.10
# KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE=""

RESTRICT=test # test suite unavailable on hackage

RDEPEND="~dev-haskell/haddock-api-2.24.0:=
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0"
#	test? ( ~dev-haskell/haddock-test-0.0.1 )
#"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-in-ghc-tree
}
