kind: myautotools
description: libffi

depends:
  - filename: bootstrap-import.bst

config:
  install-commands:
    (>):
    - |
      case "$(gcc -print-multi-os-directory)" in
      .) ;;
      *)
        mv "%{install-root}/%{libdir}/$(gcc -print-multi-os-directory)"/* "%{install-root}/%{libdir}"
        rm "%{install-root}/%{libdir}"/*.la
        rm -r "%{install-root}/%{libdir}/$(gcc -print-multi-os-directory)"
        ;;
      esac

sources:
  - kind: tar
    url: ftp://sourceware.org/pub/libffi/libffi-3.2.1.tar.gz
    ref: d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
