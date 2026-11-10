export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(
    git
    npm
    pip
    python
    zsh-autosuggestions
    zsh-syntax-highlighting
)

fpath+=($HOME/.zsh/pure)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

export NVM_DIR="$HOME/.nvm"
[[ -s /opt/homebrew/opt/nvm/nvm.sh ]] && source /opt/homebrew/opt/nvm/nvm.sh
[[ -s /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm ]] && source /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm

autoload -U promptinit; promptinit
prompt pure
