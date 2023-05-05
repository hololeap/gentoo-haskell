# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: +aeson

CABAL_FEATURES="lib profile haddock hoogle hscolour" # needs a port
inherit haskell-cabal

DESCRIPTION="HTTP client package with conduit interface and HTTPS support"
HOMEPAGE="https://www.yesodweb.com/book/https-conduit"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # needs network

RDEPEND=">=dev-haskell/aeson-0.8:=[profile?]
	dev-haskell/attoparsec:=[profile?]
	>=dev-haskell/conduit-1.2:=[profile?]
	>=dev-haskell/conduit-extra-1.1:=[profile?]
	>=dev-haskell/http-client-0.5.13:=[profile?] <dev-haskell/http-client-0.8:=[profile?]
	>=dev-haskell/http-client-tls-0.3:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
	>=dev-haskell/aeson-0.8:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=+aeson
}
