#!/bin/bash
(
printf "password: "
read -s password

echo "$password" | sudo -S apt update -y && \
echo "$password" | sudo -S apt upgrade -y && \
echo "$password" | sudo -S apt-get install -y --no-install-recommends \
    curl \
    software-properties-common \
    wget

var=$(apt-key list | grep "6084\s*F3CF\s*814B\s*57C1\s*CF12\s*EFD5\s*15CF\s*4D18\s*AF4F\s*7421")
if [ -z "$var" ]; then
    echo "$password" | sudo -S -- sh -c \
        'wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -'
fi

var=$(apt-cache policy | grep "http://apt.llvm.org/bionic.*llvm-toolchain-bionic/main")
if [ -z "$var" ]; then
    echo "$password" | sudo -S apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic main"
fi

var=$(apt-cache policy | grep "http://apt.llvm.org/bionic.*llvm-toolchain-bionic-7/main")
if [ -z "$var" ]; then
    echo "$password" | sudo -S apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-7 main"
fi

var=$(apt-cache policy | grep "http://apt.llvm.org/bionic.*llvm-toolchain-bionic-8/main")
if [ -z "$var" ]; then
    echo "$password" | sudo -S apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-8 main"
fi

echo "$password" | sudo -S apt-get install -y --no-install-recommends \
    autoconf \
    automake \
    bash-completion \
    build-essential \
    ccache \
    clang \
    clang-7 \
    clang-8 \
    clang-9 \
    clang-format \
    clang-format-7 \
    clang-format-8 \
    clang-format-9 \
    clang-tidy \
    clang-tidy-7 \
    clang-tidy-8 \
    clang-tidy-9 \
    cmake \
    gdb \
    gettext \
    git \
    git-flow \
    htop \
    iputils-ping \
    jq \
    less \
    libc++-9-dev \
    libc++abi-9-dev \
    libssl-dev \
    libtool \
    lld \
    lld-7 \
    lld-8 \
    lld-9 \
    lldb-9 \
    locales \
    make \
    net-tools \
    pkg-config \
    python3-dev \
    python3-pip \
    python3-setuptools \
    sudo \
    tmux \
    ubuntu-wsl \
    unzip \
    valgrind \
    vim
unset password
sudo -k
)

(
command -v rustc &>/dev/null
var=$?
if [ ! $var -eq 0 ]; then
    curl https://sh.rustup.rs -sSf | sh -s -- -y
    . ~/.cargo/env
fi
)

rustup update

(
command cargo install-update --help &>/dev/null
var=$?
if [ ! $var -eq 0 ]; then
    cargo install cargo-update
fi
)

cargo install-update \
    bat \
    ripgrep
