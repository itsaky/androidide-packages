TERMUX_PKG_HOMEPAGE=https://lxqt.github.io
TERMUX_PKG_DESCRIPTION="A lightweight Qt terminal emulator"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="Simeon Huang <symeon@librehat.com>"
TERMUX_PKG_VERSION="1.1.0"
TERMUX_PKG_SRCURL="https://github.com/lxqt/qterminal/releases/download/${TERMUX_PKG_VERSION}/qterminal-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=b4300486fb1a65ba8c8f4e0b8abbf28d08b5d0417fde93d1acbefb5e3c3225ad
TERMUX_PKG_DEPENDS="qt5-qtbase, qt5-qtx11extras, qtermwidget"
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools, qt5-qttools-cross-tools"
TERMUX_PKG_AUTO_UPDATE=true
