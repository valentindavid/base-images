kind: manual

depends:
  - filename: bootstrap-import.bst
  - filename: base/perl.bst
  - filename: base/expat.bst

config:
  configure-commands:
    - |
      perl Makefile.PL PREFIX="%{prefix}" DESTDIR="%{install-root}"

  install-commands:
    - |
      make -j1 install

environment:
  MAKEFLAGS: -j%{max-jobs}

environment-nocache:
- MAKEFLAGS

sources:
  - kind: tar
    url: http://search.cpan.org/CPAN/authors/id/M/MS/MSERGEANT/XML-Parser-2.36.tar.gz
    ref: 9fd529867402456bd826fe0e5588d35b3a2e27e586a2fd838d1352b71c2ed73f

