# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_HACKAGE_REVISION=4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Compatibility layer for aeson"
HOMEPAGE="https://github.com/phadej/aeson-compat#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-haskell/aeson-0.7.0.6:=[profile?] <dev-haskell/aeson-2.2:=[profile?]
	>=dev-haskell/attoparsec-0.12:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/attoparsec-iso8601-1.0.0.0:=[profile?] <dev-haskell/attoparsec-iso8601-1.2:=[profile?]
	>=dev-haskell/base-compat-0.6.0:=[profile?] <dev-haskell/base-compat-0.13:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/tagged-0.7.3:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/time-locale-compat-0.1.0.1:=[profile?] <dev-haskell/time-locale-compat-0.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? (
		dev-haskell/aeson
		>=dev-haskell/base-orphans-0.4.5 <dev-haskell/base-orphans-0.9
		>=dev-haskell/quickcheck-2.10 <dev-haskell/quickcheck-2.15
		>=dev-haskell/quickcheck-instances-0.3.16 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/tasty-0.10 <dev-haskell/tasty-1.5
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.11
	)
"
