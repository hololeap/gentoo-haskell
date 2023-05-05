# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="IOSpec"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A pure specification of the IO monad"
HOMEPAGE="https://github.com/lambdabot/IOSpec"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/mtl:=[profile?]
	>=dev-haskell/quickcheck-2:2=[profile?] <dev-haskell/quickcheck-3:2=[profile?]
	dev-haskell/stream:=[profile?]
	>=dev-lang/ghc-7.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

S="${WORKDIR}/${MY_P}"
