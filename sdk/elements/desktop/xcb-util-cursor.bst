kind: myautotools
description: X.org xcb-util-cursor

depends:
  - filename: base-stack.bst
  - filename: desktop/xorg-lib-pthread-stubs.bst
  - filename: desktop/xorg-lib-xcb.bst
  - filename: desktop/xcb-util-renderutil.bst
  - filename: desktop/xcb-util-image.bst

sources:
  - kind: tar
    url: https://www.x.org/archive/individual/xcb/xcb-util-cursor-0.1.3.tar.bz2
    ref: 05a10a0706a1a789a078be297b5fb663f66a71fb7f7f1b99658264c35926394f
