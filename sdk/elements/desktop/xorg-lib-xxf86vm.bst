kind: myautotools
description: X.org lib Xxf86vm

depends:
  - filename: base-stack.bst
  - filename: desktop/xorg-proto-x.bst
  - filename: desktop/xorg-proto-xext.bst
  - filename: desktop/xorg-lib-x11.bst
  - filename: desktop/xorg-lib-xext.bst
  - filename: desktop/xorg-proto-xf86vidmode.bst

sources:
  - kind: tar
    url: https://www.x.org/archive/individual/lib/libXxf86vm-1.1.4.tar.bz2
    ref: afee27f93c5f31c0ad582852c0fb36d50e4de7cd585fcf655e278a633d85cd57
