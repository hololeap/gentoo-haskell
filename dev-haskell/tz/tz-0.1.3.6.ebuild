# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=9

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Efficient time zone handling"
HOMEPAGE="https://github.com/ysangkok/haskell-tz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+template-haskell"

RDEPEND=">=dev-haskell/data-default-0.5:=[profile?] <dev-haskell/data-default-0.9:=[profile?]
	>=dev-haskell/tzdata-0.1:=[profile?] <dev-haskell/tzdata-0.3:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7
		>=dev-haskell/quickcheck-2.4 <dev-haskell/quickcheck-3
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck
		dev-haskell/tasty-th )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag template-haskell template-haskell)
}
