# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    nvm
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# -----------------
# User configuration
# -----------------

# Environment setup
export LANG=en_US.UTF-8

# Visual Studio Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# PostgreSQL
export PATH="/usr/local/opt/postgresql@17/bin:$PATH"

# -----------------

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
