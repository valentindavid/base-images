kind: myautotools

depends:
  - filename: base-stack.bst
  - filename: desktop/pixman.bst
  - filename: desktop/xorg-lib-x11.bst
  - filename: desktop/xorg-lib-xext.bst
  - filename: desktop/freetype.bst
  - filename: desktop/fontconfig.bst

variables:
  conf-extra: |
      --enable-xlib \
      --enable-ft \
      --enable-svg \
      --enable-ps \
      --enable-pdf \
      --enable-tee \
      --enable-gobject

sources:
  - kind: tar
    url: https://www.cairographics.org/releases/cairo-1.14.10.tar.xz
    ref: 7e87878658f2c9951a14fc64114d4958c0e65ac47530b8ac3078b2ce41b66a09
