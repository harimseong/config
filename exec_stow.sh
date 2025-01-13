#!/usr/bin/env sh
UNAME=$(uname)
OPTIONS=""

if [ "$UNAME" == "Darwin" ]; then
  OPTIONS="$OPTIONS --ignore=.fonts"
  cp .fonts/Courier\ New\ Nerd\ Font\ Complete.ttf $HOME/Library/Fonts
fi

stow --ignore=exec_stow.sh --ignore=.gitignore . 

