# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A library for working with URLs"
HOMEPAGE="https://www.haskell.org/haskellwiki/Url"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/utf8-string-0.3.4:=[profile?]
		<dev-haskell/utf8-string-2:=[profile?]
		>=dev-lang/ghc-6.10.4:=[profile?]"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
