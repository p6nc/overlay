# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CRATES="
aho-corasick-0.7.10
ansi_term-0.11.0
arrayref-0.3.6
arrayvec-0.5.1
atty-0.2.14
autocfg-1.0.0
backtrace-0.3.46
backtrace-sys-0.1.35
base64-0.11.0
bitflags-1.2.1
blake2b_simd-0.5.10
bstr-0.2.12
byteorder-1.3.4
bytes-0.5.4
cc-1.0.50
cfg-if-0.1.10
chrono-0.4.11
clap-2.33.0
constant_time_eq-0.1.5
core-foundation-0.7.0
core-foundation-sys-0.7.0
crossbeam-utils-0.7.2
csv-1.1.3
csv-core-0.1.10
dirs-1.0.5
encode_unicode-0.3.6
env_logger-0.6.2
fnv-1.0.6
foreign-types-0.3.2
foreign-types-shared-0.1.1
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futures-channel-0.3.4
futures-core-0.3.4
futures-sink-0.3.4
futures-task-0.3.4
futures-util-0.3.4
getrandom-0.1.14
h2-0.2.4
hermit-abi-0.1.10
http-0.2.1
http-body-0.3.1
httparse-1.3.4
humantime-1.3.0
hyper-0.13.4
hyper-tls-0.4.1
indexmap-1.3.2
iovec-0.1.4
itoa-0.4.5
kernel32-sys-0.2.2
lazy_static-1.4.0
libc-0.2.68
log-0.4.8
memchr-2.3.3
mio-0.6.21
miow-0.2.1
native-tls-0.2.4
net2-0.2.33
num-integer-0.1.42
num-traits-0.2.11
openssl-0.10.28
openssl-probe-0.1.2
openssl-sys-0.9.54
pin-project-0.4.8
pin-project-internal-0.4.8
pin-project-lite-0.1.4
pin-utils-0.1.0-alpha.4
pkg-config-0.3.17
ppv-lite86-0.2.6
pretty_env_logger-0.3.1
prettytable-rs-0.8.0
proc-macro2-0.4.30
proc-macro2-1.0.10
quick-error-1.2.3
quote-0.6.13
quote-1.0.3
rand-0.7.3
rand_chacha-0.2.2
rand_core-0.5.1
rand_hc-0.2.0
redox_syscall-0.1.56
redox_users-0.3.4
regex-1.3.6
regex-automata-0.1.9
regex-syntax-0.6.17
remove_dir_all-0.5.2
rsfetch-2.0.1
rust-argon2-0.7.0
rustc-demangle-0.1.16
ryu-1.0.3
schannel-0.1.18
security-framework-0.4.2
security-framework-sys-0.4.2
serde-1.0.105
slab-0.4.2
snafu-0.3.1
snafu-derive-0.3.1
strsim-0.8.0
syn-0.15.44
syn-1.0.17
tempfile-3.1.0
term-0.5.2
termcolor-1.1.0
textwrap-0.11.0
thread_local-1.0.1
time-0.1.42
tokio-0.2.14
tokio-macros-0.2.5
tokio-tls-0.3.0
tokio-util-0.3.1
tower-service-0.3.0
try-lock-0.2.2
unicode-width-0.1.7
unicode-xid-0.1.0
unicode-xid-0.2.0
vcpkg-0.2.8
vec_map-0.8.1
want-0.3.0
wasi-0.9.0+wasi-snapshot-preview1
winapi-0.2.8
winapi-0.3.8
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.4
winapi-x86_64-pc-windows-gnu-0.4.0
ws2_32-sys-0.2.1
"

inherit cargo

DESCRIPTION="A neofetch-esque tool written in Rust."
HOMEPAGE="https://github.com/rsfetch/rsfetch"
SRC_URI="$(cargo_crate_uris ${CRATES})"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="|| ( dev-lang/rust dev-lang/rust-bin )
		|| ( dev-libs/openssl dev-libs/libressl )"
RDEPEND="${DEPEND}"

src_compile() {
	cargo_src_compile
}

src_install() {
	cargo_src_install
	doman rsfetch.1
}
