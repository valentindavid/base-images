kind: autotools
description: GNU grep

depends:
- filename: dependencies/base-sdk.bst
  type: build
- filename: dependencies/config.bst
  type: build
- filename: linux-headers.bst
  type: build
- filename: gcc-stage2.bst
  type: build
- filename: binutils-stage1.bst
  type: build
- filename: glibc.bst
  type: build
- filename: cross-installation-links.bst
  type: build

variables:
  debugdir: "%{cross-debugdir}"

config:
  configure-commands:
    - |
      ./configure \
      --build=$(sh /config/config.guess) \
      --host=%{triple} \
      --prefix=%{prefix}

  install-commands:
    - |
      %{cross-install}

sources:
- kind: tar
  url: http://ftp.gnu.org/gnu/grep/grep-3.1.tar.xz
  ref: db625c7ab3bb3ee757b3926a5cfa8d9e1c3991ad24707a83dde8a5ef2bf7a07e
