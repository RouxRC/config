#!/bin/bash

for file in gitconfig vimrc bash_aliases bashrc toprc pythonrc; do
  cp -f {$HOME/,}.$file
done

mkdir -p $HOME/.thefuck
touch $HOME/.thefuck/settings.py
cp -f {$HOME/,}.thefuck/settings.py

mkdir -p $HOME/.config/git
touch $HOME/.config/git/attributes
cp -f $HOME/.config/git/attributes gitattributes

git diff --color=auto
