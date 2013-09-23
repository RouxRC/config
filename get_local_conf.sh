#!/bin/bash

for file in gitconfig vimrc bash_aliases bashrc toprc; do
  cp -f {$HOME/,}.$file
done
git diff --color=auto
