# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Client for Casa"
HOMEPAGE="https://hackage.haskell.org/package/casa-client"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/attoparsec:=[profile?]
	dev-haskell/base16-bytestring:=[profile?]
	dev-haskell/casa-types:=[profile?]
	dev-haskell/conduit:=[profile?]
	dev-haskell/conduit-extra:=[profile?]
	dev-haskell/cryptonite:=[profile?]
	dev-haskell/exceptions:=[profile?]
	dev-haskell/http-conduit:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/memory:=[profile?]
	dev-haskell/network-uri:=[profile?]
	dev-haskell/resourcet:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/th-lift:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.12
"
