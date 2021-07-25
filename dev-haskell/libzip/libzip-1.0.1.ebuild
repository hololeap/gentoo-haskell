# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="LibZip"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Bindings to libzip, a library for manipulating zip archives"
HOMEPAGE="http://bitbucket.org/astanin/hs-libzip/"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # ### Error in:   0:Monadic API:18:set file compression method

RDEPEND=">=dev-haskell/bindings-libzip-1.0:=[profile?] <dev-haskell/bindings-libzip-1.1:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/hunit )
"

S="${WORKDIR}/${MY_P}"
