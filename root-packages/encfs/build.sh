TERMUX_PKG_HOMEPAGE=https://vgough.github.io/encfs/
TERMUX_PKG_DESCRIPTION="An encrypted filesystem for FUSE"
TERMUX_PKG_LICENSE="LGPL-3.0, GPL-3.0"
TERMUX_PKG_MAINTAINER="@itsaky"
_COMMIT=c444f9b9176beea1ad41a7b2e29ca26e709b57f7
TERMUX_PKG_VERSION=2020.05.09-${_COMMIT:0:8}
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://github.com/vgough/encfs/archive/${_COMMIT}.tar.gz
TERMUX_PKG_SHA256=4b4d6b7465114ae74e2c9c6faea0411ea59bcea0f11193db72459e8bb73c16c7
TERMUX_PKG_DEPENDS="libfuse2, openssl"
