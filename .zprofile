export USER=hseong
export MAIL=$USER@student.42seoul.kr
export MANPATH="/usr/local/man:$MANPATH"
export ZVM_VI_EDITOR=/home/hseong/nvim-linux64/bin/nvim

export PATH="/usr/local/go/bin/:$PATH"
# export DISPLAY="`grep nameserver /etc/resolv.conf | sed 's/nameserver //'`:0"
# export LD_LIBRARY_PATH="/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH"
# export PATH=$HOME/bin:/usr/local/bin:$PATH

UNAME=$(uname)
export PATH=$PATH:$HOME/kitty/kitty/launcher
export PATH=$PATH:$HOME/neovim/bin
if [[ "$UNAME" == "Darwin" ]]; then
  export PATH=$PATH:/opt/homebrew/bin
  export PATH=$PATH:$HOME/.local/bin
elif [[ "$UNAME" == "Linux" ]]; then
fi

alias nvimconfig='nvim $HOME/.config/nvim/init.lua'
alias gccW='gcc -Wall -Wextra -Werror'
alias g++W='g++ -Wall -Wextra -Werror'
alias gil='git log'
alias gis='git status'

# ROOT
# source $HOME/root_install/bin/thisroot.sh

# Added by OrbStack: command-line tools and integration
# Comment this line if you don't want it to be added again.
# source ~/.orbstack/shell/init.zsh 2>/dev/null || :
