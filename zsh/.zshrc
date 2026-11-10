export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(
    git
    nvm
    zsh-autosuggestions
)

fpath+=($HOME/.zsh/pure)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8


autoload -U promptinit; promptinit
prompt pure
