kind: myautotools
description: Python 2

depends:
  - filename: bootstrap-import.bst
  - filename: base/zlib.bst

variables:
  conf-extra: |
    --enable-shared \
    LDFLAGS="-L%{libdir}"

config:
  install-commands:
    (>):
      - |
        ln -s "../%{triple}/python2.7/lib-dynload" "%{install-root}/usr/lib/python2.7/lib-dynload"

sources:
  - kind: tar
    url: https://www.python.org/ftp/python/2.7.14/Python-2.7.14.tar.xz
    ref: 71ffb26e09e78650e424929b2b457b9c912ac216576e6bd9e7d204ed03296a66
