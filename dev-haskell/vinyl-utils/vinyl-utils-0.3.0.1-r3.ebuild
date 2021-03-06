# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Utilities for vinyl"
HOMEPAGE="https://github.com/marcinmrotek/vinyl-utils"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="devel"

RDEPEND=">=dev-haskell/contravariant-1.3:=[profile?]
	>=dev-haskell/vinyl-0.5:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

PATCHES=( "${FILESDIR}"/${PN}-0.3.0.1-vinyl-0.11.patch )

src_prepare() {
	default

	cabal_chdeps \
		'vinyl         >= 0.5 && < 0.8' 'vinyl         >= 0.5' \
		'contravariant >= 1.3 && < 1.5' 'contravariant >= 1.3'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag devel devel)
}
