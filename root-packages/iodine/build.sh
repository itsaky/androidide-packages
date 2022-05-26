TERMUX_PKG_HOMEPAGE=http://code.kryo.se/iodine
TERMUX_PKG_DESCRIPTION="Tunnel IPv4 data through a DNS server"
TERMUX_PKG_LICENSE="ISC"
TERMUX_PKG_MAINTAINER="@itsaky"
TERMUX_PKG_VERSION=0.7.0
TERMUX_PKG_REVISION=10
TERMUX_PKG_SRCURL=http://code.kryo.se/iodine/iodine-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=ad2b40acf1421316ec15800dcde0f587ab31d7d6f891fa8b9967c4ded93c013e
TERMUX_PKG_DEPENDS="net-tools, zlib"
TERMUX_PKG_EXTRA_MAKE_ARGS="prefix=$TERMUX_PREFIX"
TERMUX_PKG_BUILD_IN_SRC=true
