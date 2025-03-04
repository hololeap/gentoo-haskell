# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999
#hackport: flags: -dev

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Work with WAVE and RF64 files"
HOMEPAGE="https://github.com/mrkkrp/wave"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'bytestring >=0.2 && <0.12' 'bytestring >=0.2'
)

RDEPEND=">=dev-haskell/cereal-0.3:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hspec-2 <dev-haskell/hspec-3
		>=dev-haskell/quickcheck-2.8.2 <dev-haskell/quickcheck-3
		>=dev-haskell/temporary-1.1 <dev-haskell/temporary-1.4 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev
}
