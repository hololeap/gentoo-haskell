# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite rebuild-after-doc-workaround"
inherit haskell-cabal

DESCRIPTION="A promoted and singled version of the base library"
HOMEPAGE="https://www.github.com/goldfirere/singletons"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

CABAL_CHDEPS=(
	"Cabal     >= 3.0 && < 3.5" "Cabal >= 3.0"
)

RDEPEND=">=dev-haskell/singletons-3.0:=[profile?] <dev-haskell/singletons-3.1:=[profile?]
	>=dev-haskell/singletons-th-3.0:=[profile?] <dev-haskell/singletons-th-3.1:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/th-desugar-1.12:=[profile?] <dev-haskell/th-desugar-1.13:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/tasty-1.2
		>=dev-haskell/tasty-golden-2.2
		>=dev-haskell/turtle-1.5 )
"
