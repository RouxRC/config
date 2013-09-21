#!/bin/bash

for file in `ls -a | grep -v ".sh$"`; do
  if ! test -d $file && diff {,$HOME/}$file | grep "[<>]" > /dev/null; then
    echo "$file < - > $HOME/$file"
    echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    diff {,$HOME/}$file
    echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  fi
done
