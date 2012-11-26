#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -e ~/.vimrc -o -d ~/.vim/bundle ];
then
  echo ".vimrc and .vim/bundle already exist, aborting"
else
  echo "setting up .vimrc and NeoBundle"
  cp $DIR/.vimrc ~/.vimrc
  mkdir -p ~/.vim/bundle
  git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi
