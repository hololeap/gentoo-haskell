# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A Haskell interpreter built on top of the GHC API"
HOMEPAGE="https://github.com/haskell-hint/hint"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

PATCHES=(
	"${FILESDIR}/${PN}-0.9.0.6-disable-net-test.patch"
)

RDEPEND="
	dev-haskell/ghc-paths:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/temporary:=[profile?]
	>=dev-lang/ghc-8.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? (
		dev-haskell/hunit
		dev-haskell/stm
		dev-haskell/typed-process
	)
"
