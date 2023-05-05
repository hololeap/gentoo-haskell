# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A family of combinators for defining webservices APIs and serving them"
HOMEPAGE="https://docs.servant.dev/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

CABAL_CHDEPS=(
	'hspec                >= 2.6.0    && < 2.10' 'hspec >= 2.6.0'
	'http-api-data       >= 0.4.1    && < 0.5.1' 'http-api-data >= 0.4.1'
)

RDEPEND="
	>=dev-haskell/aeson-1.4.1.0:=[profile?] <dev-haskell/aeson-3:=[profile?]
	>=dev-haskell/base-compat-0.10.5:=[profile?] <dev-haskell/base-compat-0.14:=[profile?]
	>=dev-haskell/base64-bytestring-1.0.0.1:=[profile?] <dev-haskell/base64-bytestring-1.3:=[profile?]
	>=dev-haskell/constraints-0.2:=[profile?] <dev-haskell/constraints-0.14:=[profile?]
	>=dev-haskell/http-api-data-0.4.1:=[profile?]
	>=dev-haskell/http-media-0.7.1.3:=[profile?] <dev-haskell/http-media-0.9:=[profile?]
	>=dev-haskell/http-types-0.12.2:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/monad-control-1.0.2.3:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/network-2.8:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/network-uri-2.6.1.0:=[profile?] <dev-haskell/network-uri-2.8:=[profile?]
	>=dev-haskell/resourcet-1.2.2:=[profile?] <dev-haskell/resourcet-1.3:=[profile?]
	>=dev-haskell/servant-0.19:=[profile?] <dev-haskell/servant-0.20:=[profile?]
	>=dev-haskell/sop-core-0.4.0.0:=[profile?] <dev-haskell/sop-core-0.6:=[profile?]
	>=dev-haskell/string-conversions-0.4.0.1:=[profile?] <dev-haskell/string-conversions-0.5:=[profile?]
	>=dev-haskell/tagged-0.8.6:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-2.1:=[profile?]
	>=dev-haskell/transformers-base-0.4.5.2:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/wai-3.2.2.1:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	>=dev-haskell/wai-app-static-3.1.6.2:=[profile?] <dev-haskell/wai-app-static-3.2:=[profile?]
	>=dev-haskell/warp-3.2.25:=[profile?] <dev-haskell/warp-3.4:=[profile?]
	>=dev-haskell/word8-0.1.3:=[profile?] <dev-haskell/word8-0.2:=[profile?]
	>=dev-lang/ghc-8.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? (
		>=dev-haskell/hspec-2.6.0
		>=dev-haskell/hspec-wai-0.10.1 <dev-haskell/hspec-wai-0.12
		>=dev-haskell/quickcheck-2.12.6.1 <dev-haskell/quickcheck-2.15
		dev-haskell/safe
		>=dev-haskell/should-not-typecheck-2.1.0 <dev-haskell/should-not-typecheck-2.2
		>=dev-haskell/temporary-1.3 <dev-haskell/temporary-1.4
		dev-haskell/transformers-compat
		>=dev-haskell/wai-extra-3.0.24.3 <dev-haskell/wai-extra-3.2
	)
"
