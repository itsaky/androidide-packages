TERMUX_PKG_HOMEPAGE=https://termux.org
TERMUX_PKG_DESCRIPTION="Contains LICENSE files for common licenses"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@itsaky"
TERMUX_PKG_VERSION=2.0
TERMUX_PKG_REVISION=2
TERMUX_PKG_SKIP_SRC_EXTRACT=true
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_ESSENTIAL=true

termux_step_make_install() {
	mkdir -p $TERMUX_PREFIX/share/LICENSES
	for LICENSE in "$TERMUX_PKG_BUILDER_DIR/LICENSES/*.txt"; do
		cp -f $LICENSE $TERMUX_PREFIX/share/LICENSES/
	done
}
