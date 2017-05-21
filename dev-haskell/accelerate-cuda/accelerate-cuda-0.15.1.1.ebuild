# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit flag-o-matic haskell-cabal

DESCRIPTION="Accelerate backend for NVIDIA GPUs"
HOMEPAGE="https://github.com/AccelerateHS/accelerate-cuda/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+bounds-checks debug internal-checks unsafe-checks"

RDEPEND=">=dev-haskell/accelerate-0.15.1:=[profile?] <dev-haskell/accelerate-0.15.2:=[profile?]
	>=dev-haskell/binary-0.7:=[profile?]
	>=dev-haskell/cryptohash-0.7:=[profile?]
	>=dev-haskell/cuda-0.7:=[profile?]
	>=dev-haskell/fclabels-2.0:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?]
	>=dev-haskell/hashtables-1.0.1:=[profile?]
	>dev-haskell/language-c-quote-0.10.1:=[profile?]
	>=dev-haskell/mainland-pretty-0.2:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?]
	>=dev-haskell/old-time-1.0:=[profile?]
	>=dev-haskell/safesemaphore-0.9:=[profile?]
	>=dev-haskell/srcloc-0.2:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-haskell/unordered-containers-0.1.4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_prepare() {
	cabal_chdeps \
		'base                    >= 4.7 && < 4.9' 'base                    >= 4.7'
}

src_configure() {
	# It assumes that configure is run, but does not run it (Andres has
	# patched upstream to fix this).  So need to run configure.  But its
	# difficult to make the configure works as it wants to use
	# /opt/cuda/bin/nvcc which does not understand lots
	# of g++ flags.
	strip-flags
	filter-flags -march* -ggdb -pipe -Wl* -fvar* -gdwarf* -Wa*
	haskell-cabal_src_configure \
		$(cabal_flag bounds-checks bounds-checks) \
		$(cabal_flag debug debug) \
		$(cabal_flag internal-checks internal-checks) \
		$(cabal_flag unsafe-checks unsafe-checks)
}
