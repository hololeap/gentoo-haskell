# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999
#hackport: flags: -slow,+template-haskell

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Reifies arbitrary terms into types that can be reflected back into terms"
HOMEPAGE="https://github.com/ekmett/reflection"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hspec-2 <dev-haskell/hspec-3
		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-slow \
		--flag=template-haskell
}
