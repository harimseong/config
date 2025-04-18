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
    TEXT_COMPOSITION_STRATEGY="1.0 0"
    FONT_SIZE="17.0"
    FONT_CELL_WIDTH="96%"
    FONT_CELL_HEIGHT="2px"
    ;;
  "HarimMacBook.local")
    TEXT_COMPOSITION_STRATEGY="legacy"
    FONT_SIZE="17.0"
    FONT_CELL_WIDTH="95%"
    FONT_CELL_HEIGHT="10px"
    ;;
  "Harim")
    TEXT_COMPOSITION_STRATEGY="1.0 0"
    FONT_SIZE="13.0"
    FONT_CELL_WIDTH="96%"
    FONT_CELL_HEIGHT="1px"
    ;;
  *)
    TEXT_COMPOSITION_STRATEGY="1.0 0"
    FONT_SIZE="15.0"
    FONT_CELL_WIDTH="96%"
    FONT_CELL_HEIGHT="2px"
    ;;
esac
echo "text_composition_strategy $TEXT_COMPOSITION_STRATEGY" > .config/kitty/font.conf
echo "font_size $FONT_SIZE" >> .config/kitty/font.conf
echo "modify_font cell_width $FONT_CELL_WIDTH" >> .config/kitty/font.conf
echo "modify_font cell_height $FONT_CELL_HEIGHT" >> .config/kitty/font.conf

envsubst < .gitconfig.template > .gitconfig

stow --ignore=exec_stow.sh --ignore=.gitignore --ignore=README.md --ignore=$0 . 
