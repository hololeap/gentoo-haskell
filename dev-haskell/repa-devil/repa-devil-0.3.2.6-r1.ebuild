# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Support for image reading and writing of Repa arrays using in-place FFI calls"
HOMEPAGE="https://github.com/RaphaelJ/repa-devil"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/repa-3.2.0.0:=[profile?] <dev-haskell/repa-4.0:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
	media-libs/devil
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

PATCHES=( "${FILESDIR}/${P}-ghc-8.patch" )

src_prepare() {
	default

	cabal_chdeps \
		'transformers      >= 0.2            && < 0.5' 'transformers      >= 0.2'
}
