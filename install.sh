#!/usr/bin/env bash
set -euo pipefail

readonly DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

link_dotfile() {
  local source_path="$DOTFILES_DIR/$1"
  local target_path="$2"
  mkdir -p "$(dirname "$target_path")"
  ln -sf "$source_path" "$target_path"
  echo "$target_path -> $source_path"
}

link_dotfile git/.gitconfig              "$HOME/.gitconfig"
link_dotfile git/.gitignore_global       "$HOME/.gitignore_global"
link_dotfile mos/com.caldis.Mos.plist    "$HOME/Library/Preferences/com.caldis.Mos.plist"
link_dotfile tmux/.tmux.conf             "$HOME/.tmux.conf"
link_dotfile vim/.vimrc                  "$HOME/.vimrc"
link_dotfile vscode/settings.json        "$HOME/Library/Application Support/Code/User/settings.json"
link_dotfile yabai/.yabairc              "$HOME/.yabairc"
link_dotfile zsh/.zshrc                  "$HOME/.zshrc"
link_dotfile zsh/.p10k.zsh               "$HOME/.p10k.zsh"
