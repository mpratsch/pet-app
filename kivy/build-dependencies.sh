#!/usr/bin/env bash
#
set -o pipefail


case $1 in
  linux)
    cp dependencies/build_linux_dependencies.sh build_kivy_deps.sh
    ;;
  mac)
    cp dependencies/build_macos_dependencies.sh build_kivy_deps.sh
    ;;
  *)
    echo "Usage: $0 [linux|mac]"
    exit 1
    ;;
esac

chmod +x build_kivy_deps.sh
./build_kivy_deps.sh
