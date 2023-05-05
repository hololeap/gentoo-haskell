# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal systemd

DESCRIPTION="Haskell API Search"
HOMEPAGE="https://hoogle.haskell.org/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="systemd"

RDEPEND="
	acct-group/hoogle
	acct-user/hoogle
	dev-haskell/aeson:=[profile?]
	dev-haskell/blaze-html:=[profile?]
	dev-haskell/blaze-markup:=[profile?]
	dev-haskell/cmdargs:=[profile?]
	>=dev-haskell/conduit-1.3.0:=[profile?]
	>=dev-haskell/conduit-extra-1.2.3.2:=[profile?]
	dev-haskell/connection:=[profile?]
	>=dev-haskell/extra-1.6.6:=[profile?]
	>=dev-haskell/foundation-0.0.13:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/haskell-src-exts-1.22:=[profile?] <dev-haskell/haskell-src-exts-1.24:=[profile?]
	>=dev-haskell/http-conduit-2.3:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/js-flot:=[profile?]
	dev-haskell/js-jquery:=[profile?]
	dev-haskell/mmap:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/process-extras:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	dev-haskell/resourcet:=[profile?]
	dev-haskell/storable-tuple:=[profile?]
	dev-haskell/tar:=[profile?]
	dev-haskell/uniplate:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/vector:=[profile?]
	dev-haskell/wai:=[profile?]
	dev-haskell/wai-logger:=[profile?]
	dev-haskell/warp:=[profile?]
	dev-haskell/warp-tls:=[profile?]
	dev-haskell/zlib:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
	systemd? ( sys-apps/systemd )
	!systemd? ( sys-apps/openrc )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_install() {
	haskell-cabal_src_install

	insinto /etc/default
	newins "${FILESDIR}/${PN}.confd" "${PN}"
	dodir /etc/conf.d
	ln -s "../default/${PN}" "${ED}/etc/conf.d/${PN}"

	newinitd "${FILESDIR}/${PN}.initd" "${PN}"

	insinto /usr/libexec
	doins "${FILESDIR}/${PN}-generate.bash"
	fperms 0755 "/usr/libexec/${PN}-generate.bash"

	if use systemd
	then
		systemd_dounit "${FILESDIR}/${PN}.service"
		systemd_dounit "${FILESDIR}/${PN}-generate.service"
		systemd_dounit "${FILESDIR}/${PN}-restart".{service,timer}
	else
		insinto /etc/cron.daily
		newins "${FILESDIR}/${PN}.cron" "${PN}-generate"
		fperms 0755 "/etc/cron.daily/${PN}-generate"
	fi

	doman "${FILESDIR}/${PN}.1"
}
