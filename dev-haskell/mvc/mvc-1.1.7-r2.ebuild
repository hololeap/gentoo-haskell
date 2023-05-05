# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Model-view-controller"
HOMEPAGE="https://hackage.haskell.org/package/mvc"

CABAL_CHDEPS=(
	'contravariant                   < 1.5' 'contravariant'
	'mmorph            >= 1.0.2   && < 1.2' 'mmorph            >= 1.0.2'
)

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/async-2.0.0:=[profile?] <dev-haskell/async-2.3:=[profile?]
	dev-haskell/contravariant:=[profile?]
	>=dev-haskell/foldl-1.4:=[profile?]
	<dev-haskell/managed-1.1:=[profile?]
	>=dev-haskell/mmorph-1.0.2:=[profile?]
	>=dev-haskell/pipes-4.1.7:=[profile?] <dev-haskell/pipes-4.4:=[profile?]
	>=dev-haskell/pipes-concurrency-2.0.3:=[profile?] <dev-haskell/pipes-concurrency-2.1:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
