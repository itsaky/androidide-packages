TERMUX_PKG_HOMEPAGE=https://wiki.gnome.org/Projects/gexiv2
TERMUX_PKG_DESCRIPTION="A GObject-based Exiv2 wrapper"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@itsaky"
_MAJOR_VERSION=0.14
TERMUX_PKG_VERSION=${_MAJOR_VERSION}.0
TERMUX_PKG_SRCURL=https://download.gnome.org/sources/gexiv2/${_MAJOR_VERSION}/gexiv2-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=e58279a6ff20b6f64fa499615da5e9b57cf65ba7850b72fafdf17221a9d6d69e
TERMUX_PKG_DEPENDS="exiv2, glib, libc++"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dintrospection=false
-Dvapi=false
-Dpython3=false
"
