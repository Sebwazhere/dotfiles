#!/bin/sh

set -e

rm -f .bashrc
cp ~/.bashrc .bashrc

rm -f .tmux.conf
cp ~/.tmux.conf .tmux.conf

rm -rf .config
mkdir .config

cp -R ~/.config/hypr .config/hypr
cp -R ~/.config/waybar .config/waybar
cp -R ~/.config/fuzzel .config/fuzzel
cp -R ~/.config/dunst .config/dunst

cp -R ~/.config/foot .config/foot
cp -R ~/.config/nvim .config/nvim
rm .config/nvim/lazy-lock.json

echo "Updated dotfiles."
