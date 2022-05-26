TERMUX_PKG_HOMEPAGE=https://gegl.org/babl/
TERMUX_PKG_DESCRIPTION="Dynamic pixel format translation library"
TERMUX_PKG_LICENSE="LGPL-3.0"
TERMUX_PKG_MAINTAINER="@itsaky"
_MAJOR_VERSION=0.1
TERMUX_PKG_VERSION=${_MAJOR_VERSION}.92
TERMUX_PKG_SRCURL=https://download.gimp.org/pub/babl/${_MAJOR_VERSION}/babl-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=f667735028944b6375ad18f160a64ceb93f5c7dccaa9d8751de359777488a2c1
TERMUX_PKG_DEPENDS="littlecms"
TERMUX_PKG_BREAKS="babl-dev"
TERMUX_PKG_REPLACES="babl-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-Denable-gir=false"
