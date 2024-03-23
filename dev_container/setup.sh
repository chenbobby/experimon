#!/usr/bin/env bash

set -euv

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs | sh -s -- -y
git clone https://github.com/chenbobby/experimon.git
sudo bpftool btf dump file /sys/kernel/btf/vmlinux format c > ./src/bpf/vmlinux.h
