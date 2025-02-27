# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Support for deriving PathInfo using Template Haskell"
HOMEPAGE="https://github.com/happstack/web-routes-th"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/parsec-2:=[profile?] <dev-haskell/parsec-4:=[profile?]
	>=dev-haskell/split-0.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-haskell/web-routes-0.26:=[profile?] <dev-haskell/web-routes-0.28:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hspec-2.2 <dev-haskell/hspec-2.12
		dev-haskell/hunit
		dev-haskell/quickcheck
		>=dev-haskell/web-routes-0.27 <dev-haskell/web-routes-0.28 )
"
