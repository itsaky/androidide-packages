TERMUX_PKG_HOMEPAGE=https://github.com/esnet/iperf
TERMUX_PKG_DESCRIPTION="TCP, UDP, and SCTP network bandwidth measurement tool"
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=3.10.1
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://fossies.org/linux/privat/iperf-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=03bc9760cc54a245191d46bfc8edaf8a4750f0e87abca6764486972044d6715a
TERMUX_PKG_DEPENDS="openssl"
TERMUX_PKG_BREAKS="iperf3-dev"
TERMUX_PKG_REPLACES="iperf3-dev"