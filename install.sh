#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles.d"

# シンボリックリンク作成
ln -sf "$DOTFILES_DIR/bash/bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/bash/bash_profile" "$HOME/.bash_profile"
# ln -sf "$DOTFILES_DIR/zsh/zshrc" "$HOME/.zshrc"
# ln -sf "$DOTFILES_DIR/zsh/zsh_profile" "$HOME/.zsh_profile"
ln -sf "$DOTFILES_DIR/nvim/init.lua" "$HOME/.config/nvim/init.lua"
OS_TYPE=$(uname -s)
if [[ "$OS_TYPE" == "Linux" ]]; then
	ln -sf "$DOTFILES_DIR/inputrc" "$HOME/.inputrc"
fi

echo "Dotfiles installation complete!"

