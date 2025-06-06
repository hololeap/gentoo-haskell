# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Fails build: test-suite"
inherit haskell-cabal

DESCRIPTION="Template Haskell expressions for reading fields from a project's cabal file"
HOMEPAGE="https://github.com/nkpart/cabal-file-th"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}"/${P}-ghc9.4.patch
	)

# Reported as: https://github.com/nkpart/cabal-file-th/issues/12
#test/Test.hs:15:95: error:
#    Couldn't match type ‘Distribution.Utils.ShortText.ShortText’
#                   with ‘[Char]’
RESTRICT=test

RDEPEND=">=dev-haskell/cabal-1.10:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
