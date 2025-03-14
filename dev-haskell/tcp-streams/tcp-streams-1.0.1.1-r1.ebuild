# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="One stop solution for tcp client and server with tls support"
HOMEPAGE="https://github.com/didi-FP/tcp-streams"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT=test # needs network

CABAL_CHDEPS=(
	'tls            >= 1.3 && < 2.0' 'tls >= 1.3'
)

RDEPEND="dev-haskell/data-default-class:=[profile?]
	>=dev-haskell/io-streams-1.2:=[profile?] <dev-haskell/io-streams-2.0:=[profile?]
	>=dev-haskell/network-2.3:=[profile?] <dev-haskell/network-4.0:=[profile?]
	dev-haskell/pem:=[profile?]
	>=dev-haskell/tls-1.3:=[profile?] <dev-haskell/tls-2.0:=[profile?]
	>=dev-haskell/x509-1.5:=[profile?] <dev-haskell/x509-2.0:=[profile?]
	>=dev-haskell/x509-store-1.5:=[profile?] <dev-haskell/x509-store-2.0:=[profile?]
	>=dev-haskell/x509-system-1.5:=[profile?] <dev-haskell/x509-system-2.0:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-2
		>=dev-haskell/test-framework-0.6 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2.7 <dev-haskell/test-framework-hunit-0.4 )
"
