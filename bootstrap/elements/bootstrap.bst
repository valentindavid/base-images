kind: compose
description: Bootstrap

depends:
- filename: coreutils.bst
  type: build
- filename: binutils.bst
  type: build
- filename: gcc.bst
  type: build
- filename: linux-headers.bst
  type: build
- filename: glibc.bst
  type: build
- filename: bash.bst
  type: build
- filename: gawk.bst
  type: build
- filename: findutils.bst
  type: build
- filename: grep.bst
  type: build
- filename: make.bst
  type: build
- filename: sed.bst
  type: build
- filename: readline.bst
  type: build
- filename: ncurses.bst
  type: build
