# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Lenses, traversals, and prisms for xml-conduit"
HOMEPAGE="https://github.com/fumieval/xml-lens"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/case-insensitive:=[profile?]
	>=dev-haskell/lens-4.0:=[profile?]
	>=dev-haskell/text-0.7:=[profile?] <dev-haskell/text-2:=[profile?]
	>=dev-haskell/xml-conduit-1.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_prepare() {
	default

	cabal_chdeps \
		'xml-conduit >= 1.1 && < 1.9' 'xml-conduit >= 1.1' \
		'lens >= 4.0 && < 5' 'lens >= 4.0'
}
