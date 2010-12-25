# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments"
HOMEPAGE="http://github.com/ekmett/tagged"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/data-default
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"
