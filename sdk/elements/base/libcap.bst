kind: manual

depends:
  - filename: bootstrap-import.bst
  - filename: base/perl.bst
    type: build

config:
  build-commands:
    - |
      make

  install-commands:
    - |
      make -j1 prefix="%{prefix}" lib="lib/%{triple}" DESTDIR="%{install-root}" RAISE_SETFCAP=no install

environment:
  MAKEFLAGS: -j%{max-jobs}

environment-nocache:
- MAKEFLAGS

sources:
  - kind: tar
    url: https://www.kernel.org/pub/linux/libs/security/linux-privs/libcap2/libcap-2.25.tar.xz
    ref: 693c8ac51e983ee678205571ef272439d83afe62dd8e424ea14ad9790bc35162

