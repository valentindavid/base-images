kind: myautotools
description: X.org lib Xcomposite

depends:
  - filename: base-stack.bst
  - filename: desktop/xorg-proto-composite.bst
  - filename: desktop/xorg-lib-x11.bst
  - filename: desktop/xorg-lib-xfixes.bst

sources:
  - kind: tar
    url: https://www.x.org/archive/individual/lib/libXcomposite-0.4.4.tar.bz2
    ref: ede250cd207d8bee4a338265c3007d7a68d5aca791b6ac41af18e9a2aeb34178
