kind: myautotools

depends:
  - filename: bootstrap-import.bst

config:
  install-commands:
    - |
      cd %{builddir}
      make -j1 instroot="%{install-root}" install

sources:
  - kind: tar
    url: http://www.mr511.de/software/libelf-0.8.13.tar.gz
    ref: 591a9b4ec81c1f2042a97aa60564e0cb79d041c52faa7416acb38bc95bd2c76d


