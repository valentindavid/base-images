kind: myautotools
description: X.org lib Xt

depends:
  - filename: base-stack.bst
  - filename: desktop/xorg-util-macros.bst
  - filename: desktop/xorg-lib-x11.bst
  - filename: desktop/xorg-lib-sm.bst
  - filename: desktop/xorg-lib-ice.bst
  - filename: desktop/xorg-proto-x.bst
  - filename: desktop/xorg-proto-kb.bst

sources:
  - kind: tar
    url: https://www.x.org/archive/individual/lib/libXt-1.1.5.tar.bz2
    ref: 46eeb6be780211fdd98c5109286618f6707712235fdd19df4ce1e6954f349f1a
