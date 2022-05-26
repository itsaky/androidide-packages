TERMUX_PKG_HOMEPAGE=https://www.tcsh.org
TERMUX_PKG_DESCRIPTION="TENEX C Shell, an enhanced version of Berkeley csh"
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="@itsaky"
TERMUX_PKG_VERSION=6.23.01
TERMUX_PKG_SRCURL=https://github.com/tcsh-org/tcsh/archive/TCSH${TERMUX_PKG_VERSION//./_}.tar.gz
TERMUX_PKG_SHA256=0f97e27e306206d57503b7da48801791a0ed6cbaa6c3ab0c1cf46608ea4ccb54
TERMUX_PKG_DEPENDS="ncurses, libcrypt, libiconv"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-nls --disable-nls-catalogs"
