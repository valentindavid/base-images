kind: myautotools

depends:
  - filename: base-stack.bst
  - filename: desktop/shared-mime-info.bst
  - filename: desktop/gobject-introspection.bst

variables:
  conf-extra: |
    --without-x11 \
    --without-libjasper \
    --with-included-loaders=png,jpeg

sources:
  - kind: tar
    url: https://download.gnome.org/sources/gdk-pixbuf/2.36/gdk-pixbuf-2.36.11.tar.xz
    ref: ae62ab87250413156ed72ef756347b10208c00e76b222d82d9ed361ed9dde2f3
