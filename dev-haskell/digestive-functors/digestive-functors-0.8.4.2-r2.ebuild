# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A practical formlet library"
HOMEPAGE="https://github.com/jaspervdj/digestive-functors"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/old-locale-1.0:=[profile?] <dev-haskell/old-locale-1.1:=[profile?]
	>=dev-haskell/semigroups-0.16:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7
		>=dev-haskell/quickcheck-2.5
		>=dev-haskell/semigroups-0.16
		>=dev-haskell/test-framework-0.4 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/test-framework-quickcheck2-0.3 <dev-haskell/test-framework-quickcheck2-0.4 )
"

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck                 >= 2.5 && < 2.12' 'QuickCheck                 >= 2.5' \
		'semigroups            >= 0.16    && < 0.19' 'semigroups >=0.16' \
		'semigroups            >= 0.16    && < 0.20' 'semigroups >=0.16'
}
