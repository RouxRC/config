#!/bin/bash

for file in gitconfig vimrc bash_aliases bashrc; do
  cp -f $HOME/.$file{,.backup-`date +%Y%m%d-%H%M`}
  cp -f {,$HOME/}.$file
done
