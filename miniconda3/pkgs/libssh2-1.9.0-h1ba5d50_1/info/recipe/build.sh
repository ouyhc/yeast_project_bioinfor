#!/bin/bash

# copy files which are missing from the release tarball
# see: https://github.com/libssh2/libssh2/issues/379
# TODO: remove this in the 1.9.1 or later releases
cp ${RECIPE_DIR}/missing_files/*.c tests/

# We use a repackaged cmake from elsewhere to break a build cycle.
export PATH=${PREFIX}/cmake-bin/bin:${PATH}

if [[ $target_platform =~ linux.* ]]; then
  export LDFLAGS="$LDFLAGS -Wl,-rpath-link,$PREFIX/lib"
fi

for _shared in OFF ON; do
  mkdir build-${_shared}
  pushd build-${_shared}
    cmake -DCMAKE_INSTALL_PREFIX=${PREFIX}  \
          -DBUILD_SHARED_LIBS=${_shared}    \
          -DCMAKE_INSTALL_LIBDIR=lib        \
          ..
    make -j${CPU_COUNT} ${VERBOSE_CM}
    make install
  popd
done
