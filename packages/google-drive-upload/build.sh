TERMUX_PKG_HOMEPAGE=https://github.com/labbots/google-drive-upload
TERMUX_PKG_DESCRIPTION="Bash scripts to upload files to google drive"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@itsaky"
TERMUX_PKG_VERSION=4.2
TERMUX_PKG_SRCURL=$TERMUX_PKG_HOMEPAGE/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=7c57720736884f26ea69d3a76a540f021e4e13dc84ba30f7081d5f7c69c7bda4
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_DEPENDS='bash, curl'
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_make_install() {
	install -D bash/release/* -t "$TERMUX_PREFIX/bin"
}
