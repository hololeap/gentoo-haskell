# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Clear to write, read and edit DSL for HTML"
HOMEPAGE="https://github.com/chrisdone/lucid"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/blaze-builder-0.4.0.0:=[profile?]
	>=dev-haskell/hashable-1.2.3.2:=[profile?]
	>=dev-haskell/mmorph-1.0.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/bifunctors
		dev-haskell/hspec
		dev-haskell/hunit )
"
