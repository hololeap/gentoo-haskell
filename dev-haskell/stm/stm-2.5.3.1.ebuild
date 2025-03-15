# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Software Transactional Memory"
HOMEPAGE="https://wiki.haskell.org/Software_transactional_memory"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

CABAL_CORE_LIB_GHC_PV="9.8.2 9.8.3 9.8.4 9.10.1 9.12.1 9.12.2"
