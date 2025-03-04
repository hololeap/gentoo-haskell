# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999
#hackport: flags: -werror

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Connection layer between beam and postgres"
HOMEPAGE="https://haskell-beam.github.io/beam/user-guide/backends/beam-postgres"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT="test" # Tries to spin up a temporary postgresql server, which fails

RDEPEND=">=dev-haskell/aeson-0.11:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	>=dev-haskell/attoparsec-0.13:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/beam-core-0.10:=[profile?] <dev-haskell/beam-core-0.11:=[profile?]
	>=dev-haskell/beam-migrate-0.5:=[profile?] <dev-haskell/beam-migrate-0.6:=[profile?]
	>=dev-haskell/case-insensitive-1.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/conduit-1.2:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/free-4.12:=[profile?] <dev-haskell/free-5.3:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.6:=[profile?]
	>=dev-haskell/haskell-src-exts-1.18:=[profile?] <dev-haskell/haskell-src-exts-1.24:=[profile?]
	>=dev-haskell/lifted-base-0.2:=[profile?] <dev-haskell/lifted-base-0.3:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/postgresql-libpq-0.8:=[profile?] <dev-haskell/postgresql-libpq-0.12:=[profile?]
	>=dev-haskell/postgresql-simple-0.5:=[profile?] <dev-haskell/postgresql-simple-0.8:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/tagged-0.8:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/uuid-types-1.0:=[profile?] <dev-haskell/uuid-types-1.1:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/hedgehog
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/testcontainers
		dev-haskell/uuid )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-werror
}
