kind: cmake

depends:
  - filename: base-stack.bst
  - filename: desktop/xorg-proto-x.bst
  - filename: desktop/xorg-lib-x11.bst
  - filename: desktop/xorg-lib-xrandr.bst
  - filename: desktop/wayland.bst

variables:
  lib: lib/%{triple}

  cmake-extra: |
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_SKIP_RPATH:BOOL=yes \
    -DBUILD_VKJSON=OFF \
    -DBUILD_WSI_MIR_SUPPORT=OFF \
    -DCMAKE_INSTALL_SYSCONFDIR:PATH=/etc \
    -DGLSLANG_SPIRV_INCLUDE_DIR=./ \
    -DBUILD_TESTS=OFF \
    -DBUILD_DEMOS=OFF \
    -DBUILD_LAYERS=OFF

sources:
  - kind: tar
    url: https://github.com/KhronosGroup/Vulkan-LoaderAndValidationLayers/archive/sdk-1.0.61.1.tar.gz
    ref: 47a2e56e4721ffac7df6a4e8ce2189da41331b7ed91e3879266c69302604e615

