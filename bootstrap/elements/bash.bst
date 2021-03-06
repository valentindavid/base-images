kind: autotools
description: GNU Bash

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
- filename: ncurses.bst
  type: build
- filename: readline.bst
  type: build
- filename: cross-installation-links.bst
  type: build

environment:
  PATH: /cross/bin:/bin

variables:
  debugdir: "%{cross-debugdir}"

config:
  configure-commands:
    - |
      ./configure \
      --build=$(sh /config/config.guess) \
      --host=%{triple} \
      --with-curses \
      --with-installed-readline="/readline-separate-install%{prefix}" \
      --prefix=%{prefix} \
      --enable-job-control \
      ac_cv_rl_version=7.0 \
      bash_cv_job_control_missing=present \
      LDFLAGS="-L%{sysroot}%{libdir}"

  install-commands:
    - |
      %{cross-install}
    - |
      ln -s bash "%{install-root}%{sysroot}%{bindir}/sh"

sources:
  - kind: tar
    url: http://ftp.gnu.org/gnu/bash/bash-4.4.12.tar.gz
    ref: 57d8432be54541531a496fd4904fdc08c12542f43605a9202594fa5d5f9f2331
