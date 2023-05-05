# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.3.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="A generator of nix files"
HOMEPAGE="https://hackage.haskell.org/package/styx"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=
	dev-haskell/mtl:=
	dev-haskell/optparse-applicative:=
	dev-haskell/text:=
	dev-haskell/yaml:=
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.20
"
