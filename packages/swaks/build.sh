TERMUX_PKG_HOMEPAGE=http://jetmore.org/john/code/swaks/
TERMUX_PKG_DESCRIPTION="Swiss Army Knife for SMTP"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@itsaky"
TERMUX_PKG_VERSION=20201014.0
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://jetmore.org/john/code/swaks/files/swaks-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=fb0a3b7d487a15b124ba6690f7b01a56617f1af2aa54233fd69013982de95a30
TERMUX_PKG_DEPENDS="perl"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_make_install() {
	install -Dm700 swaks "$TERMUX_PREFIX"/bin/swaks
}
