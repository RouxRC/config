#!/bin/bash

for file in gitconfig vimrc bash_aliases bashrc; do
  cp -f {$HOME/,}.$file
done
git diff --color=auto
