kind: myautotools
description: X.org lib xdamage

depends:
  - filename: base-stack.bst
  - filename: desktop/xorg-proto-damage.bst
  - filename: desktop/xorg-proto-fixes.bst
  - filename: desktop/xorg-proto-xext.bst
  - filename: desktop/xorg-lib-xfixes.bst
  - filename: desktop/xorg-lib-x11.bst

sources:
  - kind: tar
    url: https://www.x.org/archive/individual/lib/libXdamage-1.1.4.tar.bz2
    ref: 7c3fe7c657e83547f4822bfde30a90d84524efb56365448768409b77f05355ad
