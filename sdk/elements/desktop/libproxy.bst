kind: cmake

depends:
  - filename: base-stack.bst

variables:
  cmake-extra: |
    -DCMAKE_C_FLAGS_RELEASE:STRING=-DNDEBUG \
    -DCMAKE_CXX_FLAGS_RELEASE:STRING=-DNDEBUG \
    -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
    -DCMAKE_INSTALL_PREFIX:PATH=%{prefix} \
    -DINCLUDE_INSTALL_DIR:PATH=%{includedir} \
    -DLIB_INSTALL_DIR:PATH=%{libdir} \
    -DSYSCONF_INSTALL_DIR:PATH=/etc \
    -DSHARE_INSTALL_PREFIX:PATH=%{datadir} \
    -DBUILD_SHARED_LIBS:BOOL=ON \
    -DMODULE_INSTALL_DIR=%{libdir}/libproxy/0.4.11/modules \
    -DWITH_PERL=OFF \
    -DWITH_GNOME3=OFF

sources:
  - kind: tar
    url: https://github.com/libproxy/libproxy/releases/download/0.4.15/libproxy-0.4.15.tar.xz
    ref: 654db464120c9534654590b6683c7fa3887b3dad0ca1c4cd412af24fbfca6d4f
