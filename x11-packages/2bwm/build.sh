TERMUX_PKG_HOMEPAGE=https://github.com/venam/2bwm
TERMUX_PKG_DESCRIPTION="A fast floating WM"
TERMUX_PKG_LICENSE="ISC"
TERMUX_PKG_LICENSE_FILE="LICENSE.2bwm, LICENSE.hidden"
TERMUX_PKG_MAINTAINER="@itsaky"
TERMUX_PKG_VERSION=0.3
TERMUX_PKG_SRCURL=https://github.com/venam/2bwm/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=a4889ea4b01b1a3d4a508daa034b9d86676913cbbca1f977858df692a6e2af95
TERMUX_PKG_DEPENDS="libxcb, xcb-util-keysyms, xcb-util-wm, xcb-util-xrm"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="
PREFIX=$TERMUX_PREFIX
X11_INCLUDE=$TERMUX_PREFIX/include
"

termux_step_post_get_source() {
	cp $TERMUX_PKG_BUILDER_DIR/LICENSE.{2bwm,hidden} ./
}
