#!/bin/bash

rm -r .config
mkdir -p .config
cp -r ~/.config/nvim .config/nvim

rm -r .bashrc
cp ~/.bashrc .bashrc
