#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles.d"
OS_TYPE=$(uname -s)

# bash
ln -sf "$DOTFILES_DIR/bash/bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/bash/bash_profile" "$HOME/.bash_profile"
if [[ ! -d "$HOME/local_config.d" ]]; then
	mkdir ~/local_config.d
	touch ~/local_config.d/alias
fi

# zsh
# ln -sf "$DOTFILES_DIR/zsh/zshrc" "$HOME/.zshrc"
# ln -sf "$DOTFILES_DIR/zsh/zsh_profile" "$HOME/.zsh_profile"

# wezterm and starship
if [[ ! -d "$HOME/.config/wezterm" ]]; then
	mkdir ~/.config/wezterm
fi
ln -sf "$DOTFILES_DIR/wezterm/wezterm.lua" "$HOME/.config/wezterm/wezterm.lua"
ln -sf "$DOTFILES_DIR/wezterm/keybind.lua" "$HOME/.config/wezterm/keybind.lua"
ln -sf "$DOTFILES_DIR/starship.toml" "$HOME/.config/starship.toml"

# nvim
if [[ ! -d "$HOME/.config/nvim" ]]; then
	mkdir -p ~/.config/nvim/lua/config/plugins
fi
ln -sf "$DOTFILES_DIR/nvim/init.lua" "$HOME/.config/nvim/init.lua"
ln -sf "$DOTFILES_DIR/nvim/lua/keymaps.lua" "$HOME/.config/nvim/lua/keymaps.lua"
ln -sf "$DOTFILES_DIR/nvim/lua/options.lua" "$HOME/.config/nvim/lua/options.lua"
ln -sf "$DOTFILES_DIR/nvim/lua/config/lazy.lua" "$HOME/.config/nvim/lua/config/lazy.lua"
ln -sf "$DOTFILES_DIR/nvim/lua/config/plugins" "$HOME/.config/nvim/lua/config/"

# vim
ln -sf "$DOTFILES_DIR/vimrc" "$HOME/.vimrc"

# git
ln -sf "$DOTFILES_DIR/git/gitconfig" "$HOME/.gitconfig"
if [[ ! -d "$HOME/.config/git" ]]; then
	mkdir ~/.config/git
fi
ln -sf "$DOTFILES_DIR/git/ignore" "$HOME/.config/git/ignore"

# tmux
ln -sf "$DOTFILES_DIR/tmux.conf" "$HOME/.tmux.conf"

# inputrc
if [[ "$OS_TYPE" == "Linux" ]]; then
	ln -sf "$DOTFILES_DIR/inputrc" "$HOME/.inputrc"
fi

echo "Dotfiles installation complete!"
