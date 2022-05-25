TERMUX_PKG_HOMEPAGE=https://gitlab.com/ecodis/exhale
TERMUX_PKG_DESCRIPTION="Open source xHE-AAC encoder"
TERMUX_PKG_LICENSE="custom"
TERMUX_PKG_LICENSE_FILE="include/License.htm"
TERMUX_PKG_MAINTAINER="@DLC01"
TERMUX_PKG_VERSION=1.1.9
TERMUX_PKG_SRCURL=https://gitlab.com/ecodis/exhale/-/archive/v${TERMUX_PKG_VERSION}/exhale-v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=21a19f166a9b77731cbce8af2068ad2a5be2745b9987980fe2f9e371aaa738ac
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DBUILD_SHARED_LIBS=ON"