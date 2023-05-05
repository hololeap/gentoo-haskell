# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Broken test-suite: missing modules
inherit haskell-cabal

DESCRIPTION="Framework for running and organising tests, with HUnit and QuickCheck support"
HOMEPAGE="http://haskell.github.io/test-framework/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT="test" # tests are missing

RDEPEND=">=dev-haskell/ansi-terminal-0.4.0:=[profile?]
	>=dev-haskell/ansi-wl-pprint-0.5.1:=[profile?] <dev-haskell/ansi-wl-pprint-0.7:=[profile?]
	>=dev-haskell/base-orphans-0.1:=[profile?]
	>=dev-haskell/hostname-1.0:=[profile?] <dev-haskell/hostname-1.1:=[profile?]
	>=dev-haskell/old-locale-1.0:=[profile?] <dev-haskell/old-locale-1.1:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-haskell/regex-posix-0.72:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?]
	>=dev-haskell/xml-1.3.5:=[profile?] <dev-haskell/xml-1.4:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_prepare() {
	default

	cabal_chdeps \
		'ansi-terminal  >= 0.4.0  && < 0.9' 'ansi-terminal  >= 0.4.0' \
		'base-orphans   >= 0.1    && < 0.5' 'base-orphans   >= 0.1' \
		'containers     >= 0.1    && < 0.6' 'containers     >= 0.1' \
		'semigroups     >= 0.18   && < 0.19' 'semigroups     >= 0.18' \
		'QuickCheck     >= 2.3 && < 2.10' 'QuickCheck     >= 2.3' \
		'regex-posix    >= 0.72   && < 0.96' 'regex-posix    >= 0.72' \
		'time           >= 1.1.2  && < 1.9' 'time           >= 1.1.2' \
		'random         >= 1.0    && < 1.2' 'random         >= 1.0'
}
