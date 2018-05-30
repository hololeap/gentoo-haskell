# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"

inherit haskell-cabal git-r3

DESCRIPTION="A tiling window manager"
HOMEPAGE="http://xmonad.org"
EGIT_REPO_URI="https://github.com/xmonad/xmonad.git"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="+default-term no-autorepeat-keys"

RESTRICT=test # slow

RDEPEND="dev-haskell/data-default:=[profile?]
	dev-haskell/extensible-exceptions:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/setlocale:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/x11-1.8:=[profile?] <dev-haskell/x11-1.9:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	doc? ( app-text/pandoc )
	test? ( >=dev-haskell/quickcheck-2 )
"

SAMPLE_CONFIG="xmonad.hs"
SAMPLE_CONFIG_LOC="man"

src_prepare() {
	use no-autorepeat-keys && eapply "$FILESDIR/$PN-0.14-check-repeat.patch"

	default
}

src_compile() {
	cabal_src_compile
	if use doc; then
		pushd util || die "Could not cd to util"
		ghc -o GenerateManpage --make GenerateManpage.hs \
			|| die "Could not build GenerateManpage"
		popd
		./util/GenerateManpage || die "Could not generate manpage"
	fi
}

src_install() {
	cabal_src_install

	echo -e "#!/bin/sh\n/usr/bin/xmonad" > "${T}/${PN}"
	exeinto /etc/X11/Sessions
	doexe "${T}/${PN}"

	insinto /usr/share/xsessions
	doins "${FILESDIR}/${PN}.desktop"

	if use doc; then
		doman man/xmonad.1
		dohtml man/xmonad.1.html
	fi

	dodoc CONFIG README.md
}

pkg_postinst() {
	haskell-cabal_pkg_postinst

	elog "A sample ${SAMPLE_CONFIG} configuration file can be found here:"
	elog "    /usr/share/${PF}/ghc-$(ghc-version)/${SAMPLE_CONFIG_LOC}/${SAMPLE_CONFIG}"
	elog "The parameters in this file are the defaults used by xmonad."
	elog "To customize xmonad, copy this file to:"
	elog "    ~/.xmonad/${SAMPLE_CONFIG}"
	elog "After editing, use 'mod-q' to dynamically restart xmonad "
	elog "(where the 'mod' key defaults to 'Alt')."
	elog ""
	elog "Read the README or man page for more information, and to see "
	elog "other possible configurations go to:"
	elog "    http://haskell.org/haskellwiki/Xmonad/Config_archive"
	elog "Please note that many of these configurations will require the "
	elog "x11-wm/xmonad-contrib package to be installed."
}
