# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Snap backend for the digestive-functors library"
HOMEPAGE="http://github.com/jaspervdj/digestive-functors"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/digestive-functors-0.2*
		<dev-haskell/snap-core-0.8
		>=dev-haskell/utf8-string-0.3
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@snap-core          >= 0.5 && < 0.7@snap-core          >= 0.5 \&\& < 0.8@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
