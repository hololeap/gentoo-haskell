# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: -fulltextsearch,-haveusleep,-json1,+systemlib,-urifilenames

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Low-level binding to SQLite3.  Includes UTF8 and BLOB support"
HOMEPAGE="https://github.com/IreneKnapp/direct-sqlite"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-lang/ghc-8.4.3:=[profile?]
	>=dev-db/sqlite-3.0
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		dev-haskell/base16-bytestring
		dev-haskell/hunit
		dev-haskell/temporary
	)
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-fulltextsearch \
		--flag=-haveusleep \
		--flag=-json1 \
		--flag=+systemlib \
		--flag=-urifilenames
}
