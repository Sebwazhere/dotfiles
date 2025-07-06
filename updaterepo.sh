#!/bin/sh

set -e

rm -f .bashrc
cp ~/.bashrc .bashrc

rm -rf .config
mkdir .config

cp -R ~/.config/hypr .config/hypr
cp -R ~/.config/waybar .config/waybar

cp -R ~/.config/dunst .config/dunst

cp -R ~/.config/foot .config/foot

cp -R ~/.config/nvim .config/nvim

echo "Updated dotfiles."
read -p "Auto commit? [y/N] " autocommit

if [ $autocommit = "y" ] || [ $autocommit = "Y" ]; then
    git add -A
    git commit -m "AutoCommit $(date +%Y%m%d%H%M%S)"
    git push -u origin master
    echo "Completed Auto Commit"
fi
