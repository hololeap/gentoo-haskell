# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999
#hackport: flags: -bootstrap,+system-pcre

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="syntax highlighting library"
HOMEPAGE="https://github.com/jgm/skylighting"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="executable"

RDEPEND="~dev-haskell/skylighting-core-0.13.2.1:=[profile?]
	>=dev-haskell/skylighting-format-ansi-0.1:=[profile?] <dev-haskell/skylighting-format-ansi-0.2:=[profile?]
	>=dev-haskell/skylighting-format-blaze-html-0.1:=[profile?] <dev-haskell/skylighting-format-blaze-html-0.2:=[profile?]
	>=dev-haskell/skylighting-format-context-0.1:=[profile?] <dev-haskell/skylighting-format-context-0.2:=[profile?]
	>=dev-haskell/skylighting-format-latex-0.1:=[profile?] <dev-haskell/skylighting-format-latex-0.2:=[profile?]
	>=dev-lang/ghc-8.8.1:=[profile?]
	executable? ( >=dev-haskell/blaze-html-0.5:=[profile?]
			dev-haskell/pretty-show:=[profile?]
			dev-haskell/text:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bootstrap \
		$(cabal_flag executable executable) \
		--flag=system-pcre
}
