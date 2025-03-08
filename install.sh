#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles.d"
OS_TYPE=$(uname -s)

# シンボリックリンク作成
ln -sf "$DOTFILES_DIR/bash/bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/bash/bash_profile" "$HOME/.bash_profile"
if [[ ! -d "$HOME/local_config.d" ]]; then
	mkdir ~/local_config.d
	touch ~/local_config.d/alias
fi
# ln -sf "$DOTFILES_DIR/zsh/zshrc" "$HOME/.zshrc"
# ln -sf "$DOTFILES_DIR/zsh/zsh_profile" "$HOME/.zsh_profile"
ln -sf "$DOTFILES_DIR/nvim/init.lua" "$HOME/.config/nvim/init.lua"
ln -sf "$DOTFILES_DIR/vimrc" "$HOME/.vimrc"
ln -sf "$DOTFILES_DIR/gitconfig" "$HOME/.gitconfig"
ln -sf "$DOTFILES_DIR/tmux.conf" "$HOME/.tmux.conf"
if [[ "$OS_TYPE" == "Linux" ]]; then
	ln -sf "$DOTFILES_DIR/inputrc" "$HOME/.inputrc"
fi
ln -sf "$DOTFILES_DIR/wezterm.lua" "$HOME/.wezterm.lua"

echo "Dotfiles installation complete!"
