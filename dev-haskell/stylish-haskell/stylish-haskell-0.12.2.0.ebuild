# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell code prettifier"
HOMEPAGE="https://github.com/jaspervdj/stylish-haskell"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?] <dev-haskell/aeson-1.6:=[profile?]
	>=dev-haskell/cabal-2.4:=[profile?] <dev-haskell/cabal-3.3:=[profile?]
	>=dev-haskell/file-embed-0.0.10:=[profile?] <dev-haskell/file-embed-0.1:=[profile?]
	>=dev-haskell/ghc-lib-parser-8.10:=[profile?] <dev-haskell/ghc-lib-parser-8.12:=[profile?]
	>=dev-haskell/hsyaml-0.2.0:=[profile?] <dev-haskell/hsyaml-0.3:=[profile?]
	>=dev-haskell/hsyaml-aeson-0.2.0:=[profile?] <dev-haskell/hsyaml-aeson-0.3:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/optparse-applicative-0.12:=[profile?] <dev-haskell/optparse-applicative-0.16:=[profile?]
	>=dev-haskell/strict-0.3:=[profile?] <dev-haskell/strict-0.5:=[profile?]
	>=dev-haskell/syb-0.3:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7
		>=dev-haskell/random-1.1
		>=dev-haskell/test-framework-0.4 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2 <dev-haskell/test-framework-hunit-0.4 )
"
