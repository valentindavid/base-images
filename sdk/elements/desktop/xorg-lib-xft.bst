kind: myautotools

depends:
  - filename: base-stack.bst
  - filename: desktop/xorg-util-macros.bst
  - filename: desktop/xorg-lib-x11.bst
  - filename: desktop/xorg-lib-xrender.bst
  - filename: desktop/freetype.bst
  - filename: desktop/fontconfig.bst

sources:
  - kind: tar
    url: https://www.x.org/archive/individual/lib/libXft-2.3.2.tar.bz2
    ref: f5a3c824761df351ca91827ac221090943ef28b248573486050de89f4bfcdc4c
