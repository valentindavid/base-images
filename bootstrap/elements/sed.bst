kind: autotools
description: GNU sed

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
  url: http://ftp.gnu.org/gnu/sed/sed-4.4.tar.xz
  ref: cbd6ebc5aaf080ed60d0162d7f6aeae58211a1ee9ba9bb25623daa6cd942683b
