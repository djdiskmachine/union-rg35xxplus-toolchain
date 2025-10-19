export PATH="/opt/rg35xxplus-toolchain/usr/bin:${PATH}:/opt/rg35xxplus-toolchain/usr/arm-buildroot-linux-gnueabihf/sysroot/bin"
export CROSS_COMPILE=/opt/rg35xxplus-toolchain/usr/bin/arm-buildroot-linux-gnueabihf-
export PREFIX=/opt/rg35xxplus-toolchain/usr/arm-buildroot-linux-gnueabihf/sysroot/usr
export UNION_PLATFORM=rg35xxplus

# Multimedia and development environment variables
export CC=${CROSS_COMPILE}gcc
export CXX=${CROSS_COMPILE}g++
export AR=${CROSS_COMPILE}ar
export STRIP=${CROSS_COMPILE}strip
export RANLIB=${CROSS_COMPILE}ranlib
export PKG_CONFIG_PATH="${PREFIX}/lib/pkgconfig:${PREFIX}/share/pkgconfig"
export PKG_CONFIG_LIBDIR="${PREFIX}/lib/pkgconfig:${PREFIX}/share/pkgconfig"
export PKG_CONFIG_SYSROOT_DIR="/opt/rg35xxplus-toolchain/usr/arm-buildroot-linux-gnueabihf/sysroot"
export CFLAGS="-I${PREFIX}/include"
export CPPFLAGS="-I${PREFIX}/include"
export LDFLAGS="-L${PREFIX}/lib"
export LD_LIBRARY_PATH="${PREFIX}/lib"
