# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Mid-Level PostgreSQL client library"
HOMEPAGE="https://hackage.haskell.org/package/postgresql-simple"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'inspection-testing  >=0.4.1.1 && <0.6' 'inspection-testing >=0.4.1.1'
	)

RDEPEND=">=dev-haskell/aeson-2.1.2.1:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	>=dev-haskell/attoparsec-0.14.4:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/case-insensitive-1.2.1.0:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/hashable-1.4.3.0:=[profile?] <dev-haskell/hashable-1.6:=[profile?]
	>=dev-haskell/only-0.1:=[profile?] <dev-haskell/only-0.1.1:=[profile?]
	>=dev-haskell/postgresql-libpq-0.10.0.0:=[profile?] <dev-haskell/postgresql-libpq-0.12:=[profile?]
	>=dev-haskell/scientific-0.3.7.0:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/time-compat-1.9.5:=[profile?] <dev-haskell/time-compat-1.12:=[profile?]
	>=dev-haskell/uuid-types-1.0.5:=[profile?] <dev-haskell/uuid-types-1.1:=[profile?]
	>=dev-haskell/vector-0.13.0.0:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-2.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/base16-bytestring
		>=dev-haskell/cryptohash-md5-0.11.100.1 <dev-haskell/cryptohash-md5-0.12
		dev-haskell/hunit
		>=dev-haskell/inspection-testing-0.4.1.1
		dev-haskell/tasty
		dev-haskell/tasty-golden
		dev-haskell/tasty-hunit
		dev-haskell/text )
"
