# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal git-r3

DESCRIPTION="A drone-based team combat game for up to 32 players"
HOMEPAGE="https://gitlab.com/awjchen/pixelpusher"

EGIT_REPO_URI="https://gitlab.com/awjchen/pixelpusher"

LICENSE="BSD"
SLOT="0/${PV}"

RDEPEND="dev-haskell/async:=[profile?]
	dev-haskell/cereal:=[profile?]
	dev-haskell/cereal-text:=[profile?]
	dev-haskell/cereal-vector:=[profile?]
	dev-haskell/dlist:=[profile?]
	dev-haskell/fast-logger:=[profile?]
	dev-haskell/file-embed:=[profile?]
	dev-haskell/fixed:=[profile?]
	dev-haskell/freetype2:=[profile?]
	dev-haskell/generic-lens:=[profile?]
	dev-haskell/gl:=[profile?]
	dev-haskell/glfw-b:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/microlens:=[profile?]
	dev-haskell/microlens-platform:=[profile?]
	dev-haskell/mmorph:=[profile?]
	dev-haskell/mwc-random:=[profile?]
	dev-haskell/network:=[profile?]
	dev-haskell/nonempty-vector:=[profile?]
	dev-haskell/openal-ffi:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/opusfile:=[profile?]
	dev-haskell/prettyprinter:=[profile?]
	dev-haskell/prometheus:=[profile?]
	dev-haskell/psqueues:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/search-algorithms:=[profile?]
	dev-haskell/semver:=[profile?]
	dev-haskell/statevar:=[profile?]
	dev-haskell/strict:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/toml-parser:=[profile?]
	dev-haskell/typed-process:=[profile?]
	dev-haskell/unagi-chan:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	dev-haskell/vector-sized:=[profile?]
	dev-haskell/wai:=[profile?]
	dev-haskell/warp:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/hspec
		dev-haskell/quickcheck )
"
BDEPEND="dev-haskell/hpack"

src_prepare() {
	hpack || die

	haskell-cabal_src_prepare
}
