# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Low-level networking interface"
HOMEPAGE="https://github.com/haskell/network"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc64 ~x86 ~amd64-linux ~x86-linux"
IUSE="devel"

RDEPEND=">=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hspec-2.6
		dev-haskell/hunit
		dev-haskell/quickcheck
		dev-haskell/temporary )
"

PATCHES=(
	"${FILESDIR}/${PN}-3.1.2.6-size_t.patch"
)

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag devel devel)
}
