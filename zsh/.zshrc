export LANG=en_US.UTF-8
export PATH="$HOME/.local/bin:$PATH"

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
source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[[ -s /opt/homebrew/opt/nvm/nvm.sh ]] && source /opt/homebrew/opt/nvm/nvm.sh
[[ -s /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm ]] && source /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm

fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure
