# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dieter"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git zsh-vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

alias vim='nvim -u NORC'
alias nvimconfig='nvim $HOME/.config/nvim/init.lua'
alias gccW='gcc -Wall -Wextra -Werror'
alias g++W='g++ -Wall -Wextra -Werror'
alias gil='git log'
alias gis='git status'

# ==================== ENVVAR ====================

export USER=$(basename $(echo $HOME))
export MAIL=$USER@student.42seoul.kr
export MANPATH="/usr/local/man:$MANPATH"
# export DISPLAY="`grep nameserver /etc/resolv.conf | sed 's/nameserver //'`:0"
# export LD_LIBRARY_PATH="/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH"
# export PATH=$HOME/bin:/usr/local/bin:$PATH

UNAME=$(uname)
if [[ "$UNAME" == "Darwin" ]]; then
  export PATH=$PATH:/opt/homebrew/bin
elif [[ "$UNAME" == "Linux" ]]; then
fi

export LESS="$LESS" # -N"

# ==================== PATH ====================

# .local/bin
export PATH=$PATH:$HOME/.local/bin

# neovim
export PATH=$HOME/neovim/bin:$PATH

# rust
export PATH=$HOME/.cargo/bin:$PATH

# python
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# go
export PATH="/usr/local/go/bin/:$PATH"

# ruby
export GEM_HOME="$HOME/gems"
export PATH="$GEM_HOME/bin:$PATH"

# ROOT
# source $HOME/root_install/bin/thisroot.sh

# Added by OrbStack: command-line tools and integration
# Comment this line if you don't want it to be added again.
# source ~/.orbstack/shell/init.zsh 2>/dev/null || :

