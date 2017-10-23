# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Storage backend for serversession using Redis"
HOMEPAGE="https://github.com/yesodweb/serversession"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="lib-werror"

RDEPEND="<dev-haskell/hedis-0.10:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/path-pieces:=[profile?]
	>=dev-haskell/serversession-1.0:=[profile?] <dev-haskell/serversession-1.1:=[profile?]
	>=dev-haskell/tagged-0.7:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hspec-2.1 <dev-haskell/hspec-3 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag lib-werror lib-werror)
}
