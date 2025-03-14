# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Library for functional reactive programming (FRP)"
HOMEPAGE="https://wiki.haskell.org/Reactive-banana"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.6:=[profile?]
	>=dev-haskell/pqueue-1.0:=[profile?] <dev-haskell/pqueue-1.6:=[profile?]
	>=dev-haskell/semigroups-0.13:=[profile?] <dev-haskell/semigroups-0.21:=[profile?]
	>=dev-haskell/these-0.2:=[profile?] <dev-haskell/these-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2.1.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vault-0.3:=[profile?] <dev-haskell/vault-0.4:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/quickcheck-2.10 <dev-haskell/quickcheck-2.16
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		>=dev-haskell/tasty-quickcheck-0.10.1.2 <dev-haskell/tasty-quickcheck-0.12 )
"
