# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Internet Protocol data structures"
HOMEPAGE="https://github.com/mvv/network-ip"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/data-default-class:=[profile?]
	>=dev-haskell/data-dword-0.2:=[profile?]
	>=dev-haskell/data-endian-0.0.1:=[profile?]
	>=dev-haskell/data-serializer-0.2:=[profile?]
	>=dev-haskell/data-textual-0.3:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?]
	>=dev-haskell/parsers-0.5:=[profile?]
	>=dev-haskell/text-printer-0.4:=[profile?]
	>=dev-haskell/type-hint-0.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10.0
	test? ( >=dev-haskell/tasty-0.4
		>=dev-haskell/tasty-quickcheck-0.3 )
"
