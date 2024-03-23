#!/usr/bin/env bash

set -euv

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs | sh -s -- -y
