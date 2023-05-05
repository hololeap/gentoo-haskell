# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999
#hackport: flags: build-example:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="like mtl's ReaderT / WriterT / StateT, but more than one contained value/type"
HOMEPAGE="https://github.com/lspitzner/multistate"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RDEPEND=">=dev-haskell/monad-control-1.0:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/tagged-0.7:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	<dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hspec-2 )
"

src_prepare() {
	default

	cabal_chdeps \
		'hspec >=2 && <2.9' 'hspec >=2'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples build-example)
}
