TERMUX_PKG_HOMEPAGE=https://www.haproxy.org/
TERMUX_PKG_DESCRIPTION="The Reliable, High Performance TCP/HTTP Load Balancer"
TERMUX_PKG_LICENSE="GPL-2.0, LGPL-2.1"
TERMUX_PKG_MAINTAINER="@itsaky"
_MAJOR_VERSION=2.4
TERMUX_PKG_VERSION=${_MAJOR_VERSION}.14
TERMUX_PKG_SRCURL=http://www.haproxy.org/download/${_MAJOR_VERSION}/src/haproxy-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=e6346b406b911b94c88eb05a5f622d53d49ffc247468fb03c12a4ffe3cc5ff04
TERMUX_PKG_DEPENDS="liblua53, openssl, pcre, zlib"
TERMUX_PKG_BUILD_IN_SRC=true

TERMUX_PKG_CONFFILES="etc/haproxy/haproxy.cfg"

termux_step_make() {
	CC="$CC -Wl,-rpath=$TERMUX_PREFIX/lib -Wl,--enable-new-dtags"

	make \
		CPU=generic \
		TARGET=generic \
		USE_GETADDRINFO=1 \
		USE_LUA=1 \
		LUA_INC="$TERMUX_PREFIX/include/lua5.3" \
		LUA_LIB="$TERMUX_PREFIX/lib"
		LUA_LIB_NAME=lua5.3 \
		USE_OPENSSL=1 \
		USE_PCRE=1 \
		PCRE_INC="$TERMUX_PREFIX/include" \
		PCRE_LIB="$TERMUX_PREFIX/lib" \
		USE_ZLIB=1 \
		ADDINC="$CPPFLAGS" \
		CFLAGS="$CFLAGS" \
		LDFLAGS="$LDFLAGS"
}

termux_step_post_make_install() {
	mkdir -p "$TERMUX_PREFIX"/etc/haproxy
	sed -e "s|@TERMUX_PREFIX@|${TERMUX_PREFIX}|g" \
		"$TERMUX_PKG_BUILDER_DIR"/haproxy.cfg.in \
		> "$TERMUX_PREFIX"/etc/haproxy/haproxy.cfg

	mkdir -p "$TERMUX_PREFIX"/share/haproxy/examples/errorfiles
	install -m600 examples/*.cfg "$TERMUX_PREFIX"/share/haproxy/examples/
	install -m600 examples/errorfiles/*.http \
		"$TERMUX_PREFIX"/share/haproxy/examples/errorfiles/
}
