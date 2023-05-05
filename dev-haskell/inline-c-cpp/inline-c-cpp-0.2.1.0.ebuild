# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Lets you embed C++ code into Haskell"
HOMEPAGE="https://hackage.haskell.org/package/inline-c-cpp"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/inline-c-0.6.0.0:=[profile?]
	dev-haskell/safe-exceptions:=[profile?]
	>=dev-lang/ghc-7.8.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hspec )
"
