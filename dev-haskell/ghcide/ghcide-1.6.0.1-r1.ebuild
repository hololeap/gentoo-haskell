# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999
#hackport: flags: -ghc-patched-unboxed-bytecode,bench-exe,executable,test-exe

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="The core of an IDE"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/ghcide#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="bench-exe executable test-exe"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/aeson-pretty:=[profile?]
	dev-haskell/async:=[profile?]
	>=dev-haskell/base16-bytestring-0.1.1:=[profile?] <dev-haskell/base16-bytestring-1.1:=[profile?]
	dev-haskell/case-insensitive:=[profile?]
	>=dev-haskell/cryptohash-sha1-0.11.100:=[profile?] <dev-haskell/cryptohash-sha1-0.12:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/dependent-map:=[profile?]
	dev-haskell/dependent-sum:=[profile?]
	>=dev-haskell/diff-0.4.0:=[profile?] <dev-haskell/diff-0.5:=[profile?]
	dev-haskell/dlist:=[profile?]
	dev-haskell/exceptions:=[profile?]
	>=dev-haskell/extra-1.7.4:=[profile?]
	dev-haskell/fingertree:=[profile?]
	dev-haskell/focus:=[profile?]
	dev-haskell/fuzzy:=[profile?]
	>=dev-haskell/ghc-check-0.5.0.4:=[profile?]
	dev-haskell/ghc-exactprint:=[profile?]
	dev-haskell/ghc-paths:=[profile?]
	dev-haskell/ghc-trace-events:=[profile?]
	dev-haskell/glob:=[profile?]
	>=dev-haskell/haddock-library-1.8:=[profile?] <dev-haskell/haddock-library-1.11:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/heapsize-0.3:=[profile?] <dev-haskell/heapsize-0.4:=[profile?]
	>=dev-haskell/hie-bios-0.8:=[profile?] <dev-haskell/hie-bios-0.9.0:=[profile?]
	>=dev-haskell/hie-compat-0.2.0.0:=[profile?] <dev-haskell/hie-compat-0.3:=[profile?]
	>=dev-haskell/hiedb-0.4.1:=[profile?] <dev-haskell/hiedb-0.4.2:=[profile?]
	>=dev-haskell/hls-graph-1.6:=[profile?] <dev-haskell/hls-graph-1.7:=[profile?]
	dev-haskell/hslogger:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/list-t:=[profile?]
	>=dev-haskell/lsp-1.4.0.0:=[profile?] <dev-haskell/lsp-1.5:=[profile?]
	>=dev-haskell/lsp-types-1.4.0.1:=[profile?] <dev-haskell/lsp-types-1.5:=[profile?]
	dev-haskell/monoid-subclasses:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/network-uri:=[profile?]
	>=dev-haskell/opentelemetry-0.6.1:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/parallel:=[profile?]
	dev-haskell/prettyprinter:=[profile?]
	dev-haskell/prettyprinter-ansi-terminal:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/regex-tdfa-1.3.1.0:=[profile?]
	dev-haskell/retrie:=[profile?]
	dev-haskell/rope-utf16-splay:=[profile?]
	dev-haskell/safe:=[profile?]
	dev-haskell/safe-exceptions:=[profile?]
	dev-haskell/sorted-list:=[profile?]
	dev-haskell/sqlite-simple:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/stm-containers:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unliftio:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	>=dev-haskell/unordered-containers-0.2.10.0:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/vector:=[profile?]
	dev-haskell/vector-algorithms:=[profile?]
	>=dev-lang/ghc-8.6:=
	>=dev-haskell/hls-plugin-api-1.2.0.2:=[profile?] <dev-haskell/hls-plugin-api-1.4:=[profile?]
	>=dev-haskell/implicit-hie-cradle-0.5:=[profile?] <dev-haskell/implicit-hie-cradle-0.6:=[profile?]
	bench-exe? ( dev-haskell/hls-plugin-api:=[profile?]
			dev-haskell/lsp-test:=[profile?]
			dev-haskell/tasty-hunit:=[profile?]
			dev-util/shake:=[profile?] )
	executable? ( dev-haskell/gitrev:=[profile?]
			dev-haskell/hls-plugin-api:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4
	test? ( dev-haskell/hls-plugin-api
			dev-haskell/ghc-typelits-knownnat
			>=dev-haskell/lsp-test-0.14 <dev-haskell/lsp-test-0.15
			dev-haskell/quickcheck
			dev-haskell/quickcheck-instances
			>=dev-haskell/regex-tdfa-1.3.1 <dev-haskell/regex-tdfa-1.4
			dev-haskell/tasty
			dev-haskell/tasty-expected-failure
			dev-haskell/tasty-hunit
			dev-haskell/tasty-quickcheck
			dev-haskell/tasty-rerun
			dev-util/shake )
"

pkg_pretend() {
	use test && einfo "Tests may timeout when run on slower computers"
}

src_configure() {
	if use test || use executable; then
		exe_flag=executable
	else
		exe_flag=-executable
	fi

	configure_args=(
		$(cabal_flag bench-exe bench-exe)
		--flag=$exe_flag
		--flag=-ghc-patched-unboxed-bytecode
		$(cabal_flag test-exe test-exe)
	)

	# If any version of the package is currently installed, it can cause errors
	# when the linker tries to use the currently installed shared object files.
	# This workaround hides the currently installed version of the pacakge.
	#
	# See <https://github.com/gentoo-haskell/gentoo-haskell/issues/1269> for
	# an example.
	pkg_dir="$(echo "/var/db/pkg/${CATEGORY}/${PN}"-[0-9]*/)"
	if [[ -d "${pkg_dir}" ]]; then
		pkgdb_entry="$(sed -rn -e 's/obj (\S+package\.conf\.d\S+)\s.*/\1/p' "${pkg_dir}/CONTENTS")"
		[[ "$?" -eq 0 ]] || die
		pkgdb="$(dirname "${pkgdb_entry}")"
		pkgdb_copy="${S}/pkgdb-copy"

		einfo "Making copy of ghc package DB in ${pkgdb_copy}"

		cp -a "${pkgdb}" "${pkgdb_copy}" || die

		einfo "Unregistering ${PN} from package DB copy"

		ghc-pkg -f "${pkgdb_copy}" unregister "${PN}" || die

		configure_args+=(
			--package-db=clear
			--package-db="${pkgdb_copy}"
		)
	fi

	haskell-cabal_src_configure "${configure_args[@]}"
}

src_test() {
	export PATH="${S}/dist/build/ghcide${PATH+:}${PATH}"
	haskell-cabal_src_test
}

src_install() {
	use bench-exe && bench_exe=exe:ghcide-bench
	use executable && exe=exe:ghcide
	use test-exe && test_exe=exe:ghcide-test-preprocessor

	haskell-cabal_src_install lib:$PN $bench_exe $exe $test_exe
}
