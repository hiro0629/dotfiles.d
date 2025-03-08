#!/bin/bash

DOTFILES_DIR="$HOME/new_dotfiles"

# シンボリックリンク作成
ln -sf "$DOTFILES_DIR/bash/bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/bash/bash_profile" "$HOME/.bash_profile"
# ln -sf "$DOTFILES_DIR/zsh/zshrc" "$HOME/.zshrc"
# ln -sf "$DOTFILES_DIR/zsh/zsh_profile" "$HOME/.zsh_profile"

echo "Dotfiles installation complete!"

