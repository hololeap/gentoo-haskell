# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Various extra monoid-related definitions and utilities"
HOMEPAGE="http://hackage.haskell.org/package/monoid-extras"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/semigroups-0.8*:=[profile?]
		>=dev-lang/ghc-7.0.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10"
