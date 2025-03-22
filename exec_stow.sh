#!/usr/bin/env sh
UNAME=$(uname)
HOSTNAME=$(uname -n)
OPTIONS=""

if [ "$UNAME" == "Darwin" ]; then
  OPTIONS="$OPTIONS --ignore=.fonts"
  cp .fonts/Courier\ New\ Nerd\ Font\ Complete.ttf $HOME/Library/Fonts
fi

case $HOSTNAME in
  "HARIM-LAPTOP")
    echo "text_composition_strategy 1.0 0" > .config/kitty/font.conf
    echo "font_size 17.0" >> .config/kitty/font.conf
    echo "modify_font cell_width 96%" >> .config/kitty/font.conf
    echo "modify_font cell_height 2px" >> .config/kitty/font.conf
    ;;
  "HarimMacBook.local")
    echo "text_composition_strategy legacy" > .config/kitty/font.conf
    echo "font_size 17.0" > .config/kitty/font.conf
    echo "modify_font cell_width 95%" >> .config/kitty/font.conf
    echo "modify_font cell_height 10px" >> .config/kitty/font.conf
    ;;
esac

stow --ignore=exec_stow.sh --ignore=.gitignore . 
