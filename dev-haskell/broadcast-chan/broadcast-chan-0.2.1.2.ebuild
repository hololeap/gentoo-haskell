# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Closable, fair, single-wakeup channel type that avoids 0 reader space leaks"
HOMEPAGE="https://github.com/merijn/broadcast-chan"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="sync +threaded"

CABAL_CHDEPS=(
	'base >= 4.8 && < 4.19' 'base >= 4.8'
	)

RDEPEND=">=dev-haskell/unliftio-core-0.1.1:=[profile?] <dev-haskell/unliftio-core-0.3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag sync sync) \
		$(cabal_flag threaded threaded)
}
