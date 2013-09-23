#!/bin/bash

for file in gitconfig vimrc bash_aliases bashrc toprc; do
  if test -f $HOME/.$file; then
    cp -f $HOME/.$file{,.backup-`date +%Y%m%d-%H%M`}
  fi
  cp -f {,$HOME/}.$file
done

if ! test -f $HOME/.gitconfig.user; then
  echo "Please copy either .gitconfig.perso or .gitconfig.work into $HOME/.gitconfig.user"
fi
cat $HOME/.gitconfig.user .gitconfig > $HOME/.gitconfig

