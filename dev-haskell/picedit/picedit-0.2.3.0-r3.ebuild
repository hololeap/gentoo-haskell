# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="simple image manipulation functions"
HOMEPAGE="https://github.com/mdibaiee/picedit#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cli-0.1.2:=[profile?] <dev-haskell/cli-0.2:=[profile?]
	>=dev-haskell/hmatrix-0.17.0.2:=[profile?]
	>=dev-haskell/juicypixels-3.2.8:=[profile?]
	>=dev-haskell/vector-0.11.0.0:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.8.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

PATCHES=(
	"${FILESDIR}"/${P}-ghc84.patch
)

src_prepare() {
	default

	cabal_chdeps \
		'hmatrix >= 0.17.0.2 && < 0.19' 'hmatrix >= 0.17.0.2' \
		'JuicyPixels >= 3.2.8 && < 3.3' 'JuicyPixels >= 3.2.8'
}
