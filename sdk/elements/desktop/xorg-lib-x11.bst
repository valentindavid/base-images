kind: myautotools
description: X.org lib x11

depends:
  - filename: base-stack.bst
  - filename: desktop/xorg-util-macros.bst
  - filename: desktop/xorg-proto-x.bst
  - filename: desktop/xorg-proto-xext.bst
  - filename: desktop/xorg-proto-kb.bst
  - filename: desktop/xorg-proto-input.bst
  - filename: desktop/xorg-lib-xtrans.bst
  - filename: desktop/xorg-lib-xcb.bst

sources:
  - kind: tar
    url: https://www.x.org/archive/individual/lib/libX11-1.6.5.tar.bz2
    ref: 4d3890db2ba225ba8c55ca63c6409c1ebb078a2806de59fb16342768ae63435d
