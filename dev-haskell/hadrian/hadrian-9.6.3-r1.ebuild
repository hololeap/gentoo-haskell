# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: selftest:test

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="GHC build system"
HOMEPAGE="https://gitlab.haskell.org/ghc/ghc/-/tree/master/hadrian#readme"
SRC_URI="https://downloads.haskell.org/ghc/${PV/_/-}/ghc-${PV}-src.tar.xz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="static test +threaded"

RESTRICT="!test? ( test )"
S="${WORKDIR}/ghc-${PV}/hadrian"
CABAL_FILE="${S}/hadrian.cabal"

PATCHES=(
	"${FILESDIR}/${PN}-9.4.8-remove-with-cc-configure-flag.patch"
	"${FILESDIR}/${PN}-9.4.8-disable-doc-archives.patch"
)

RDEPEND="
	>=dev-haskell/cabal-3.2:=
	>=dev-haskell/extra-1.4.7:=
	>=dev-haskell/parsec-3.1:= <dev-haskell/parsec-3.2:=
	>=dev-haskell/text-1.2:= <dev-haskell/text-3:=
	>=dev-haskell/unordered-containers-0.2.1:= <dev-haskell/unordered-containers-0.3:=
	>=dev-lang/ghc-9.0.2:=
	>=dev-util/shake-0.18.3:= <dev-util/shake-0.20:=
	static? (
		dev-libs/libffi[static-libs]
		dev-libs/gmp[static-libs]
	)
	test? (
		>=dev-haskell/quickcheck-2.6:= <dev-haskell/quickcheck-2.15:=
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_prepare() {
	default
	cabal_chdeps \
		'Cabal                >= 3.2     && < 3.9' 'Cabal                >= 3.2'
}

src_configure() {
	local configure_flags=(
		$(cabal_flag test selftest)
		$(cabal_flag threaded threaded)
	)

	if use static; then
		configure_flags+=(
			--disable-shared
			--enable-static
			--disable-executable-dynamic
			--enable-executable-static
		)
	fi

	haskell-cabal_src_configure "${configure_flags[@]}"
}
