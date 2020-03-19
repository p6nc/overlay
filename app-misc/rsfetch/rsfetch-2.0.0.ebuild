# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CRATES="
adler32-1.0.4
aho-corasick-0.7.10
ansi_term-0.11.0
arrayref-0.3.6
arrayvec-0.5.1
atty-0.2.14
autocfg-0.1.7
autocfg-1.0.0
backtrace-0.3.45
backtrace-sys-0.1.34
base64-0.10.1
base64-0.11.0
bitflags-1.2.1
blake2b_simd-0.5.10
bstr-0.2.12
byteorder-1.3.4
bytes-0.4.12
cc-1.0.50
cfg-if-0.1.10
chrono-0.4.11
clap-2.33.0
cloudabi-0.0.3
constant_time_eq-0.1.5
cookie-0.12.0
cookie_store-0.7.0
core-foundation-0.7.0
core-foundation-sys-0.7.0
crc32fast-1.2.0
crossbeam-deque-0.7.3
crossbeam-epoch-0.8.2
crossbeam-queue-0.2.1
crossbeam-utils-0.7.2
csv-1.1.3
csv-core-0.1.10
dirs-1.0.5
dtoa-0.4.5
either-1.5.3
encode_unicode-0.3.6
encoding_rs-0.8.22
env_logger-0.6.2
error-chain-0.12.2
failure-0.1.7
failure_derive-0.1.7
flate2-1.0.14
fnv-1.0.6
foreign-types-0.3.2
foreign-types-shared-0.1.1
fuchsia-cprng-0.1.1
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futures-0.1.29
futures-cpupool-0.1.8
getrandom-0.1.14
h2-0.1.26
hermit-abi-0.1.8
http-0.1.21
http-body-0.1.0
httparse-1.3.4
humantime-1.3.0
hyper-0.12.35
hyper-tls-0.3.2
idna-0.1.5
idna-0.2.0
indexmap-1.3.2
iovec-0.1.4
itoa-0.4.5
kernel32-sys-0.2.2
lazy_static-1.4.0
libc-0.2.68
lock_api-0.3.3
log-0.4.8
matches-0.1.8
maybe-uninit-2.0.0
memchr-2.3.3
memoffset-0.5.4
mime-0.3.16
mime_guess-2.0.3
miniz_oxide-0.3.6
mio-0.6.21
miow-0.2.1
native-tls-0.2.4
net2-0.2.33
num-integer-0.1.42
num-traits-0.2.11
num_cpus-1.12.0
openssl-0.10.28
openssl-probe-0.1.2
openssl-sys-0.9.54
parking_lot-0.9.0
parking_lot_core-0.6.2
percent-encoding-1.0.1
percent-encoding-2.1.0
pkg-config-0.3.17
ppv-lite86-0.2.6
pretty_env_logger-0.3.1
prettytable-rs-0.8.0
proc-macro2-0.4.30
proc-macro2-1.0.9
publicsuffix-1.5.4
quick-error-1.2.3
quote-0.6.13
quote-1.0.3
rand-0.6.5
rand-0.7.3
rand_chacha-0.1.1
rand_chacha-0.2.2
rand_core-0.3.1
rand_core-0.4.2
rand_core-0.5.1
rand_hc-0.1.0
rand_hc-0.2.0
rand_isaac-0.1.1
rand_jitter-0.1.4
rand_os-0.1.3
rand_pcg-0.1.2
rand_xorshift-0.1.1
rdrand-0.4.0
redox_syscall-0.1.56
redox_users-0.3.4
regex-1.3.5
regex-automata-0.1.9
regex-syntax-0.6.17
remove_dir_all-0.5.2
reqwest-0.9.24
rsfetch-2.0.0
rust-argon2-0.7.0
rustc-demangle-0.1.16
rustc_version-0.2.3
ryu-1.0.3
schannel-0.1.17
scopeguard-1.1.0
security-framework-0.4.1
security-framework-sys-0.4.1
semver-0.9.0
semver-parser-0.7.0
serde-1.0.105
serde_derive-1.0.105
serde_json-1.0.48
serde_urlencoded-0.5.5
slab-0.4.2
smallvec-0.6.13
smallvec-1.2.0
snafu-0.3.1
snafu-derive-0.3.1
string-0.2.1
strsim-0.8.0
syn-0.15.44
syn-1.0.16
synstructure-0.12.3
tempfile-3.1.0
term-0.5.2
termcolor-1.1.0
textwrap-0.11.0
thread_local-1.0.1
time-0.1.42
tokio-0.1.22
tokio-buf-0.1.1
tokio-current-thread-0.1.7
tokio-executor-0.1.10
tokio-io-0.1.13
tokio-reactor-0.1.12
tokio-sync-0.1.8
tokio-tcp-0.1.4
tokio-threadpool-0.1.18
tokio-timer-0.2.13
try-lock-0.2.2
try_from-0.3.2
unicase-2.6.0
unicode-bidi-0.3.4
unicode-normalization-0.1.12
unicode-width-0.1.7
unicode-xid-0.1.0
unicode-xid-0.2.0
url-1.7.2
url-2.1.1
uuid-0.7.4
vcpkg-0.2.8
vec_map-0.8.1
version_check-0.9.1
want-0.2.0
wasi-0.9.0+wasi-snapshot-preview1
winapi-0.2.8
winapi-0.3.8
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.3
winapi-x86_64-pc-windows-gnu-0.4.0
winreg-0.6.2
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
