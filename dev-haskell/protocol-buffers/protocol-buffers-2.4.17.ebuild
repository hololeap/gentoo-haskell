# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Parse Google Protocol Buffer specifications"
HOMEPAGE="https://github.com/k-bx/protocol-buffers"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-1.1.0.0:=[profile?]
	dev-haskell/base16-bytestring:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
