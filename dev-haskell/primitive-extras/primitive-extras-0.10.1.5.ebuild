# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Extras for the \"primitive\" library"
HOMEPAGE="https://github.com/metrix-ai/primitive-extras"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/cereal-0.5.5:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/deferred-folds-0.9:=[profile?] <dev-haskell/deferred-folds-0.10:=[profile?]
	>=dev-haskell/focus-1:=[profile?] <dev-haskell/focus-1.1:=[profile?]
	>=dev-haskell/foldl-1:=[profile?] <dev-haskell/foldl-2:=[profile?]
	>=dev-haskell/list-t-1.0.1:=[profile?] <dev-haskell/list-t-1.1:=[profile?]
	>=dev-haskell/primitive-0.7:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-haskell/primitive-unlifted-0.1.3.1:=[profile?] <dev-haskell/primitive-unlifted-0.2:=[profile?]
	>=dev-haskell/profunctors-5:=[profile?] <dev-haskell/profunctors-6:=[profile?]
	>=dev-haskell/vector-0.12:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/quickcheck-2.13.1 <dev-haskell/quickcheck-3
		>=dev-haskell/quickcheck-instances-0.3.21 <dev-haskell/quickcheck-instances-0.4
		<dev-haskell/rerebase-2
		>=dev-haskell/tasty-1.2.2 <dev-haskell/tasty-2
		>=dev-haskell/tasty-hunit-0.10.0.2 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.10.1 <dev-haskell/tasty-quickcheck-0.11 )
"
