# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Sized list"
HOMEPAGE="https://github.com/kowainik/slist"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4
	test? (
		dev-haskell/doctest
		dev-haskell/glob
		>=dev-haskell/hedgehog-1.0 <dev-haskell/hedgehog-1.3
		dev-haskell/hspec
		>=dev-haskell/hspec-hedgehog-0.0.1 <dev-haskell/hspec-hedgehog-0.1
	)
"
