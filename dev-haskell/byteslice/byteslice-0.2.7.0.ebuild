# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: +avoid-rawmemchr

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Slicing managed and unmanaged memory"
HOMEPAGE="https://github.com/andrewthad/byteslice"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/primitive-0.7:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-haskell/primitive-addr-0.1:=[profile?] <dev-haskell/primitive-addr-0.2:=[profile?]
	>=dev-haskell/primitive-unlifted-0.1.2:=[profile?] <dev-haskell/primitive-unlifted-0.2:=[profile?]
	>=dev-haskell/run-st-0.1.1:=[profile?] <dev-haskell/run-st-0.2:=[profile?]
	>=dev-haskell/tuples-0.1:=[profile?] <dev-haskell/tuples-0.2:=[profile?]
	>=dev-haskell/vector-0.12:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? ( >=dev-haskell/quickcheck-classes-0.6.4
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=avoid-rawmemchr
}
