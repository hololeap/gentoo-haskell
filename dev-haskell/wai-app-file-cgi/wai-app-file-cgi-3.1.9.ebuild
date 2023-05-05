# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="File/CGI/Rev Proxy App of WAI"
HOMEPAGE="http://www.mew.org/~kazu/proj/mighttpd/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10.0.0:=[profile?]
	dev-haskell/attoparsec-conduit:=[profile?]
	dev-haskell/case-insensitive:=[profile?]
	>=dev-haskell/conduit-1.1:=[profile?]
	dev-haskell/conduit-extra:=[profile?]
	dev-haskell/data-default-class:=[profile?]
	>=dev-haskell/http-client-0.5:=[profile?]
	>=dev-haskell/http-conduit-2.1:=[profile?]
	dev-haskell/http-date:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?]
	dev-haskell/mime-types:=[profile?]
	dev-haskell/network:=[profile?]
	dev-haskell/sockaddr:=[profile?]
	dev-haskell/static-hash:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/wai-3.2:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	dev-haskell/wai-conduit:=[profile?]
	>=dev-haskell/warp-3.3:=[profile?] <dev-haskell/warp-3.4:=[profile?]
	dev-haskell/word8:=[profile?]
	>=dev-lang/ghc-8.0.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( >=dev-haskell/doctest-0.9.3
		>=dev-haskell/hspec-1.3
		dev-haskell/http )
"
