# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: -skip-state-machine-test

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Add ACID guarantees to any serializable Haskell data structure"
HOMEPAGE="https://github.com/acid-state/acid-state"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="executable"

PATCHES=(
	"${FILESDIR}/${PN}-0.16.1.1-add-executable-flag.patch"
)

RDEPEND="
	>=dev-haskell/cereal-0.4.1.0:=[profile?]
	dev-haskell/filelock:=[profile?]
	<dev-haskell/network-3.2:=[profile?]
	dev-haskell/network-bsd:=[profile?]
	>=dev-haskell/safecopy-0.6:=[profile?] <dev-haskell/safecopy-0.11:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?]
	dev-haskell/th-expand-syns:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		dev-haskell/hspec
		dev-haskell/hspec-discover
		dev-haskell/hedgehog
	)
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable) \
		--flag=-skip-state-machine-test
}
