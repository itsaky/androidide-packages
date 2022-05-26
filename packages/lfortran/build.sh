TERMUX_PKG_HOMEPAGE=https://lfortran.org/
TERMUX_PKG_DESCRIPTION="A modern open-source interactive Fortran compiler"
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="@itsaky"
TERMUX_PKG_VERSION=0.14.0
TERMUX_PKG_SRCURL=https://gitlab.com/lfortran/lfortran.git
TERMUX_PKG_DEPENDS="clang, libc++, libkokkos, zlib"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DBUILD_SHARED_LIBS=ON"
TERMUX_PKG_HOSTBUILD=true

# ```
# [...]/src/lfortran/parser/parser_stype.h:97:1: error: static_assert failed
# due to requirement
# 'sizeof(LFortran::YYSTYPE) == sizeof(LFortran::Vec<LFortran::AST::ast_t *>)'
# static_assert(sizeof(YYSTYPE) == sizeof(Vec<AST::ast_t*>));
# ^             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ```
# Furthermore libkokkos does not support ILP32
TERMUX_PKG_BLACKLISTED_ARCHES="arm, i686"

termux_step_host_build() {
	termux_setup_cmake

	( cd $TERMUX_PKG_SRCDIR && sh build0.sh )
	cmake $TERMUX_PKG_SRCDIR
	make -j $TERMUX_MAKE_PROCESSES
}

termux_step_pre_configure() {
	PATH=$TERMUX_PKG_HOSTBUILD_DIR/src/bin:$PATH

	( cd $TERMUX_PKG_SRCDIR && sh build0.sh )

	for f in fpmath.h math_private.h s_clog.c s_clogf.c s_cpowf.c; do
		cp $TERMUX_PKG_BUILDER_DIR/$f $TERMUX_PKG_SRCDIR/src/runtime/impure/
	done

	LDFLAGS+=" -lm"
}
