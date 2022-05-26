TERMUX_PKG_HOMEPAGE=https://nlopt.readthedocs.io/
TERMUX_PKG_DESCRIPTION="Library for nonlinear optimization"
TERMUX_PKG_LICENSE="LGPL-2.1, MIT"
TERMUX_PKG_MAINTAINER="@itsaky"
TERMUX_PKG_VERSION=2.7.1
TERMUX_PKG_SRCURL=https://github.com/stevengj/nlopt/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=db88232fa5cef0ff6e39943fc63ab6074208831dc0031cf1545f6ecd31ae2a1a
TERMUX_PKG_DEPENDS="libc++"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DNLOPT_CXX=ON
-DNLOPT_FORTRAN=OFF
-DNLOPT_PYTHON=OFF
-DNLOPT_OCTAVE=OFF
-DNLOPT_MATLAB=OFF
-DNLOPT_GUILE=OFF
-DNLOPT_SWIG=OFF
-DNLOPT_TESTS=OFF
"
TERMUX_PKG_AUTO_UPDATE=true
