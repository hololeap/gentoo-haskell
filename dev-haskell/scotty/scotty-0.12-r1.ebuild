# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: -hpc-coveralls

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
CABAL_HACKAGE_REVISION="6"
inherit haskell-cabal

CABAL_FILE="${S}/${PN}.cabal"
CABAL_DISTFILE="${P}-rev${CABAL_HACKAGE_REVISION}.cabal"

DESCRIPTION="Haskell web framework inspired by Ruby's Sinatra, using WAI and Warp"
HOMEPAGE="https://github.com/scotty-web/scotty"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${CABAL_HACKAGE_REVISION}.cabal
		-> ${CABAL_DISTFILE}"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/aeson-0.6.2.1:=[profile?] <dev-haskell/aeson-2.1:=[profile?]
	>=dev-haskell/base-compat-batteries-0.10:=[profile?] <dev-haskell/base-compat-batteries-0.13:=[profile?]
	>=dev-haskell/blaze-builder-0.3.3.0:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/case-insensitive-1.0.0.1:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/data-default-class-0.0.1:=[profile?] <dev-haskell/data-default-class-0.2:=[profile?]
	dev-haskell/fail:=[profile?]
	>=dev-haskell/http-types-0.9.1:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/monad-control-1.0.0.3:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/nats-0.1:=[profile?] <dev-haskell/nats-2:=[profile?]
	>=dev-haskell/network-2.6.0.2:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/regex-compat-0.95.1:=[profile?] <dev-haskell/regex-compat-0.96:=[profile?]
	>=dev-haskell/transformers-base-0.4.1:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/transformers-compat-0.4:=[profile?] <dev-haskell/transformers-compat-0.8:=[profile?]
	>=dev-haskell/wai-3.0.0:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	>=dev-haskell/wai-extra-3.0.0:=[profile?] <dev-haskell/wai-extra-3.2:=[profile?]
	>=dev-haskell/warp-3.0.13:=[profile?] <dev-haskell/warp-3.4:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? ( dev-haskell/async
		>=dev-haskell/hspec-2 <dev-haskell/hspec-3
		>=dev-haskell/hspec-wai-0.6.3
		dev-haskell/lifted-base )
"
BDEPEND="app-text/dos2unix"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${CABAL_DISTFILE}" "${CABAL_FILE}" || die

	# Convert to unix line endings
	dos2unix "${CABAL_FILE}" || die

	# Apply patches *after* pulling the revised cabal
	default
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-hpc-coveralls
}