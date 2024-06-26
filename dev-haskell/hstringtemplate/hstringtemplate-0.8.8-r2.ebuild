# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_HACKAGE_REVISION=8
CABAL_PN="HStringTemplate"

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="StringTemplate implementation in Haskell"
HOMEPAGE="https://hackage.haskell.org/package/HStringTemplate"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="<dev-haskell/blaze-builder-0.5:=[profile?]
	<dev-haskell/old-locale-1.1:=[profile?]
	>dev-haskell/parsec-3:=[profile?] <dev-haskell/parsec-4:=[profile?]
	>=dev-haskell/semigroups-0.16:=[profile?] <dev-haskell/semigroups-0.21:=[profile?]
	<dev-haskell/syb-0.8:=[profile?]
	<dev-haskell/text-2.2:=[profile?]
	<dev-haskell/void-0.8:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hunit-1.5
		>=dev-haskell/quickcheck-2.13
		>=dev-haskell/random-1.0 )
"
