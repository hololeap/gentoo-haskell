# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A transactional, ACID compliant, embeddable key-value store"
HOMEPAGE="https://github.com/haskell-haskey"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/exceptions-0.8.3:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/haskey-btree-0.3.0.0:=[profile?] <dev-haskell/haskey-btree-0.4:=[profile?]
	>=dev-haskell/list-t-0.2:=[profile?] <dev-haskell/list-t-2:=[profile?]
	>=dev-haskell/lz4-0.2:=[profile?] <dev-haskell/lz4-1:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-3:=[profile?]
	>=dev-haskell/semigroups-0.12:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/stm-2.1:=[profile?] <dev-haskell/stm-3:=[profile?]
	>=dev-haskell/xxhash-ffi-0.1.0.1:=[profile?] <dev-haskell/xxhash-ffi-1:=[profile?]
	>=dev-lang/ghc-7.10.1:=[profile?]
	>=dev-haskell/focus-0.1.2:=[profile?] <dev-haskell/focus-1.1:=[profile?]
	>=dev-haskell/stm-containers-0.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/async-2.1 <dev-haskell/async-3
		>=dev-haskell/hunit-1.3 <dev-haskell/hunit-2
		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
		>=dev-haskell/random-1.1 <dev-haskell/random-2
		>=dev-haskell/temporary-1.2 <dev-haskell/temporary-1.4
		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-1
		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-1
		>=dev-haskell/test-framework-quickcheck2-0.3 <dev-haskell/test-framework-quickcheck2-1
		>=dev-haskell/text-1.2 <dev-haskell/text-2
		>=dev-haskell/vector-0.10 <dev-haskell/vector-1 )
"

src_prepare() {
	default

	cabal_chdeps \
		'stm-containers          >=0.2  && <1 || >= 1.1 && < 1.2' 'stm-containers >=1.1'
}
