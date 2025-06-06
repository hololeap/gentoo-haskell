# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Templating language with similar syntax and features to Liquid or Jinja2"
HOMEPAGE="https://github.com/brendanhay/ede"

GIT_REPO="https://github.com/brendanhay/ede"
GIT_COMMIT="9ad7f6c5097f394673db943906e36150070816c9"
GIT_P="${PN}-${GIT_COMMIT}"

SRC_URI+="
	test? (
		${GIT_REPO}/archive/${GIT_COMMIT}.tar.gz -> ${GIT_P}.tar.gz
	)
"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+attoparsecaeson"

RDEPEND=">=dev-haskell/attoparsec-0.13:=[profile?]
	>=dev-haskell/comonad-4.2:=[profile?]
	>=dev-haskell/free-4.8:=[profile?]
	>=dev-haskell/lens-4.0:=[profile?]
	>=dev-haskell/optparse-applicative-0.18:=[profile?]
	>=dev-haskell/parsers-0.12.1.1:=[profile?]
	>=dev-haskell/prettyprinter-1.7:=[profile?]
	>=dev-haskell/prettyprinter-ansi-terminal-1.1:=[profile?]
	>=dev-haskell/scientific-0.3.1:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/text-manipulate-0.1.2:=[profile?]
	>=dev-haskell/trifecta-2.1:=[profile?]
	>=dev-haskell/unordered-containers-0.2.3:=[profile?]
	>=dev-haskell/vector-0.7.1:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	attoparsecaeson? ( >=dev-haskell/aeson-2.2:=[profile?]
				>=dev-haskell/attoparsec-aeson-2.2:=[profile?] )
	!attoparsecaeson? ( >=dev-haskell/aeson-1.4:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/bifunctors
		dev-haskell/tasty
		dev-haskell/tasty-golden )
"

src_prepare() {
	if use test; then
		rm -r "${S}/test/resources" || die
		cp -a "${WORKDIR}/${GIT_P}/test/resources/" "${S}/test" || die
	fi

	haskell-cabal_src_prepare
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag attoparsecaeson attoparsecaeson)
}
