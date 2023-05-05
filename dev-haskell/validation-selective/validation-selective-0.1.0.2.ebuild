# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Lighweight pure data validation based on Applicative and Selective functors"
HOMEPAGE="https://github.com/kowainik/validation-selective"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

GHC_BOOTSTRAP_PACKAGES=(
	cabal-doctest
)

PATCHES=(
	"${FILESDIR}/${PN}-0.1.0.2-cabal-doctest.patch"
)

RDEPEND="
	>=dev-haskell/selective-0.3:=[profile?] <dev-haskell/selective-0.6:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4
	dev-haskell/cabal-doctest
	test? (
		>=dev-haskell/doctest-0.16 <dev-haskell/doctest-0.21
		>=dev-haskell/hedgehog-1.0 <dev-haskell/hedgehog-1.2
		>=dev-haskell/hspec-2.7.1 <dev-haskell/hspec-2.11
		>=dev-haskell/hspec-hedgehog-0.0.1.1 <dev-haskell/hspec-hedgehog-0.1
	)
"
