# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999
#hackport: flags: -old-mtl

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A library for writing CGI programs"
HOMEPAGE="https://github.com/cheecheeo/haskell-cgi"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+network-uri"

RDEPEND="dev-haskell/exceptions:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/multipart-0.1.2:=[profile?] <dev-haskell/multipart-0.2:=[profile?]
	>=dev-haskell/parsec-2.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/xhtml-3000.0.0:=[profile?] <dev-haskell/xhtml-3000.3:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	network-uri? ( >=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-2.7:=[profile?]
			>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?] )
	!network-uri? ( <dev-haskell/network-2.6:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/doctest-0.8
		>=dev-haskell/quickcheck-2.8.1 )
"

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck >= 2.8.1 && < 2.10' 'QuickCheck >= 2.8.1' \
		'time >= 1.5 && < 1.7' 'time >= 1.5' \
		'doctest >= 0.8 && < 0.12' 'doctest >= 0.8' \
		'exceptions < 0.9' 'exceptions' \
		'containers < 0.6' 'containers'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network-uri network-uri) \
		--flag=-old-mtl
}
