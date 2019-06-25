#!/bin/sh
# Userful packages and tools from
# https://github.com/msys2/msys2/wiki/Creating-Packages#useful-packages-and-tools
# https://packages.msys2.org/base
# https://github.com/rbenv/ruby-build/wiki
pacman -Syuu && \
pacman --needed -Suu \
    base-devel \
    msys2-devel \
    editors \
    net-utils \
    compression && \
pacman --needed -Suu \
    mingw-w64-i686-toolchain \
    mingw-w64-x86_64-toolchain \
    mingw-w64-x86_64-lcov \
    mingw-w64-x86_64-clang \
    mingw-w64-x86_64-clang-analyzer \
    mingw-w64-x86_64-clang-tools-extra \
    mingw-w64-x86_64-compiler-rt \
    mingw-w64-x86_64-libblocksruntime \
    mingw-w64-x86_64-boost && \
pacman --needed -Suu \
    git \
    git-flow \
    tig \
    tmux \
    perl-ack \
    mingw-w64-i686-ag \
    mingw-w64-x86_64-ag \
    mingw-w64-x86_64-meld3 \
    libffi \
    libyaml \
    openssl \
    zlib
# git config --global user.email "agate-pris@users.noreply.github.com"
# git config --global user.name "agate-pris"
# msys2-runtime
# msys2-runtime-devel
