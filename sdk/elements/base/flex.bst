kind: myautotools

depends:
  - filename: bootstrap-import.bst
  - filename: base/texinfo.bst
    type: build
  - filename: base/help2man.bst
    type: build
  - filename: base/m4.bst

sources:
  - kind: tar
    url: https://github.com/westes/flex/files/981163/flex-2.6.4.tar.gz
    ref: e87aae032bf07c26f85ac0ed3250998c37621d95f8bd748b31f15b33c45ee995
