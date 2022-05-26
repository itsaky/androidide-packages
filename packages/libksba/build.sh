TERMUX_PKG_HOMEPAGE=https://gnupg.org/related_software/libksba/
TERMUX_PKG_DESCRIPTION="Library for using X.509 certificates and CMS (Cryptographic Message Syntax) easily accessible"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@itsaky"
TERMUX_PKG_VERSION=1.6.0
TERMUX_PKG_SRCURL=https://www.gnupg.org/ftp/gcrypt/libksba/libksba-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=dad683e6f2d915d880aa4bed5cea9a115690b8935b78a1bbe01669189307a48b
TERMUX_PKG_DEPENDS="libgpg-error"
TERMUX_PKG_BREAKS="libksba-dev"
TERMUX_PKG_REPLACES="libksba-dev"
