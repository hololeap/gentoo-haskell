# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Small monomorphic tuples"
HOMEPAGE="https://github.com/andrewthad/tuples"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/primitive-0.6.4:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/quickcheck
		dev-haskell/quickcheck-classes
		dev-haskell/tasty
		dev-haskell/tasty-quickcheck )
"
