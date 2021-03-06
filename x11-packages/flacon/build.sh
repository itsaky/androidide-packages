TERMUX_PKG_HOMEPAGE=https://flacon.github.io/
TERMUX_PKG_DESCRIPTION="Extracts individual tracks from one big audio file and saves them as separate audio files"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@itsaky"
TERMUX_PKG_VERSION=8.2.0
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/flacon/flacon/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=7fd0f97f9bca87c5ec0f7eee30c6480b9cc51c8c60f79d9726ed09db756c60b9
TERMUX_PKG_DEPENDS="libuchardet, taglib, qt5-qtbase, qt5-qttools"
TERMUX_PKG_BUILD_DEPENDS="qt5-qtbase-cross-tools, qt5-qttools-cross-tools"
