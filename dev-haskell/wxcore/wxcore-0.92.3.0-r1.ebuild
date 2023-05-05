# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.3.9999

WX_GTK_VER="3.0-gtk3"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal wxwidgets

DESCRIPTION="wxHaskell core"
HOMEPAGE="https://wiki.haskell.org/WxHaskell"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="wxWinLL-3.1"
SLOT="${WX_GTK_VER}/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="gstreamer"

RDEPEND="dev-haskell/parsec:=[profile?]
	dev-haskell/stm:=[profile?]
	>=dev-haskell/wxc-0.92:${WX_GTK_VER}=[profile?,gstreamer?]
	>=dev-haskell/wxdirect-0.91:${WX_GTK_VER}=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
	x11-libs/wxGTK:${WX_GTK_VER}=[X,gstreamer?,opengl]
	!!dev-haskell/wxcore:3.0
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.23
"

PATCHES=(
	"${FILESDIR}"/${PN}-0.92.2.0-ghc-8.4.patch
	"${FILESDIR}"/${PN}-0.92.3.0-cabal-3.patch
)

src_prepare() {
	default

	sed -e "s@wxdirect@wxdirect-${WX_GTK_VER}@g" \
		-i "${S}/Setup.hs" \
		|| die "Could not change Setup.hs for wxdirect slot ${WX_GTK_VER}"

	cabal_chdeps\
		'containers >= 0.2 && < 0.6' 'containers >=0.2'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=splitbase
}
