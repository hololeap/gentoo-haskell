# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Add support for using HSP with Reform"
HOMEPAGE="http://www.happstack.com/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/hsp-0.9:=[profile?] <dev-haskell/hsp-0.11:=[profile?]
	>=dev-haskell/hsx2hs-0.13:=[profile?] <dev-haskell/hsx2hs-0.15:=[profile?]
	>=dev-haskell/reform-0.2.1:=[profile?] <dev-haskell/reform-0.4:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
