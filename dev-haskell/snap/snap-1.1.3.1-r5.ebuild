# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: -old-base

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal

DESCRIPTION="Top-level package for the Snap Web Framework"
HOMEPAGE="https://snapframework.com/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RESTRICT="test" # requires network access

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?]
	>=dev-haskell/attoparsec-0.10:=[profile?]
	>=dev-haskell/cereal-0.3:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/clientsession-0.8:=[profile?] <dev-haskell/clientsession-0.10:=[profile?]
	>=dev-haskell/configurator-0.1:=[profile?] <dev-haskell/configurator-0.4:=[profile?]
	>=dev-haskell/directory-tree-0.10:=[profile?] <dev-haskell/directory-tree-0.13:=[profile?]
	>=dev-haskell/dlist-0.5:=[profile?]
	>=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/hashable-1.2.0.6:=[profile?]
	>=dev-haskell/heist-1.1:=[profile?] <dev-haskell/heist-1.2:=[profile?]
	>=dev-haskell/lens-3.7.6:=[profile?]
	>=dev-haskell/lifted-base-0.2:=[profile?] <dev-haskell/lifted-base-0.3:=[profile?]
	>=dev-haskell/map-syntax-0.2:=[profile?] <dev-haskell/map-syntax-0.4:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/mwc-random-0.8:=[profile?]
	>=dev-haskell/pwstore-fast-2.2:=[profile?] <dev-haskell/pwstore-fast-2.5:=[profile?]
	>=dev-haskell/snap-core-1.0:=[profile?] <dev-haskell/snap-core-1.1:=[profile?]
	>=dev-haskell/snap-server-1.0:=[profile?] <dev-haskell/snap-server-1.2:=[profile?]
	>=dev-haskell/stm-2.2:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/unordered-containers-0.1.4:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/xmlhtml-0.1:=[profile?] <dev-haskell/xmlhtml-0.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1"
#	test? ( >=dev-haskell/async-2.0.1.5 <dev-haskell/async-2.3
#		>=dev-haskell/http-streams-0.7.1.1 <dev-haskell/http-streams-0.9
#		>=dev-haskell/hunit-1.2.5.2 <dev-haskell/hunit-1.7
#		>=dev-haskell/quickcheck-2.4.2
#		>=dev-haskell/smallcheck-1.1.1 <dev-haskell/smallcheck-1.3
#		dev-haskell/syb
#		>=dev-haskell/test-framework-0.8.0.3 <dev-haskell/test-framework-0.9
#		>=dev-haskell/test-framework-hunit-0.3.0.1 <dev-haskell/test-framework-hunit-0.4
#		>=dev-haskell/test-framework-quickcheck2-0.3.0.3 <dev-haskell/test-framework-quickcheck2-0.4
#		>=dev-haskell/test-framework-smallcheck-0.2 <dev-haskell/test-framework-smallcheck-0.3 )
src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck                 >= 2.4.2    && < 2.14' 'QuickCheck >= 2.4.2' \
		'dlist                     >= 0.5      && < 0.9' 'dlist >= 0.5' \
		'aeson                     >= 0.6      && < 1.5' 'aeson >= 0.6' \
		'lens                      >= 3.7.6    && < 4.20' 'lens                      >= 3.7.6' \
		'base                      >= 4        && < 4.15' 'base >=4' \
		'mwc-random                >= 0.8      && < 0.15' 'mwc-random >=0.8' \
		'hashable                  >= 1.2.0.6  && < 1.4' 'hashable >=1.2.0.6' \
		'attoparsec                >= 0.10     && < 0.14' 'attoparsec >=0.10'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-old-base
}
