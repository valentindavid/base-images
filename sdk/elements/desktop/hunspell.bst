kind: myautotools

depends:
  - filename: base-stack.bst

variables:
  conf-extra: |
    --with-readline \
    --with-ui

sources:
  - kind: tar
    url: http://downloads.sourceforge.net/hunspell/hunspell-1.3.3.tar.gz
    ref: a7b2c0de0e2ce17426821dc1ac8eb115029959b3ada9d80a81739fa19373246c
