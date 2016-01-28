#!/bin/bash

for file in gitconfig vimrc bash_aliases bashrc toprc pythonrc; do
  cp -f {$HOME/,}.$file
done
mkdir -p $HOME/.thefuck
touch $HOME/.thefuck/settings.py
cp -f {$HOME/,}.thefuck/settings.py
git diff --color=auto
