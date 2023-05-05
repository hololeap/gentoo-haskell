# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Lambdabot reference plugins"
HOMEPAGE="https://wiki.haskell.org/Lambdabot"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/http-4000:=[profile?]
	>=dev-haskell/lambdabot-core-5.3:=[profile?] <dev-haskell/lambdabot-core-5.4:=[profile?]
	>=dev-haskell/mtl-2:=[profile?]
	>=dev-haskell/network-2.7:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/oeis-0.3.1:=[profile?]
	>=dev-haskell/regex-tdfa-1.1:=[profile?]
	>=dev-haskell/split-0.2:=[profile?]
	>=dev-haskell/tagsoup-0.12:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
