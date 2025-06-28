#!/bin/bash

set -e

if [[ ! -x "$(command -v pacman)" ]]; then
    echo "Pacman is not available, exiting with code 1."
    exit 1
fi

packages=(
    git
    github-cli
    vim
    neovim
    konsole
    ttf-hack-nerd
    cmake
)

echo "This script will:
1. Update all your packages
2. Install the following packages:"

for package in ${packages[@]}; do
    echo "    $package"
done

read -p "Do you want to continue? [Y/n] " continue

if [[ "$continue" == "n" || "$continue" == "N" ]]; then
    echo "Exiting with code 2."
    exit 1
fi

echo "Updating packages..."
sudo pacman -Syu --noconfirm

for package in ${packages[@]}; do
    echo "Installing ${package}..."
    sudo pacman -S --needed --noconfirm ${package}
done

echo "Package Installation complete!"
