# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="Decimal"
MY_P="${MY_PN}-${PV}"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="Decimal numbers with variable precision"
HOMEPAGE="https://github.com/PaulJohnson/Haskell-Decimal"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-2
		>=dev-haskell/quickcheck-2.4
		>=dev-haskell/test-framework-0.4.1
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-quickcheck2 )
"
