# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Sampling function-based probability distributions"
HOMEPAGE="https://github.com/jtobin/mwc-probability"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">dev-haskell/mwc-random-0.13:=[profile?] <dev-haskell/mwc-random-0.16:=[profile?]
	>=dev-haskell/primitive-0.6:=[profile?] <dev-haskell/primitive-1.0:=[profile?]
	>=dev-lang/ghc-8.6.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
"
