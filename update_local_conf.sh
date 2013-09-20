#!/bin/bash

for file in gitconfig vimrc bash_aliases bashrc; do
  if test -f $HOME/.$file; then
    cp -f $HOME/.$file{,.backup-`date +%Y%m%d-%H%M`}
  fi
  cp -f {,$HOME/}.$file
done
