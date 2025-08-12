#!/usr/bin/env bash

# Dotfiles setup script - creates symlinks for all configuration files

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Setting up dotfiles from ${DOTFILES_DIR}..."

# Function to create symlink with backup
create_symlink() {
    local source="$1"
    local target="$2"
    
    # Create parent directory if it doesn't exist
    mkdir -p "$(dirname "$target")"
    
    # Backup existing file if it exists and is not a symlink
    if [[ -e "$target" && ! -L "$target" ]]; then
        echo "  Backing up existing $target to ${target}.backup"
        mv "$target" "${target}.backup"
    fi
    
    # Remove existing symlink if it exists
    if [[ -L "$target" ]]; then
        rm "$target"
    fi
    
    # Create new symlink
    ln -s "$source" "$target"
    echo "  Linked $source -> $target"
}

# Shell configuration
echo "Setting up shell configuration..."
create_symlink "${DOTFILES_DIR}/zshrc" "${HOME}/.zshrc"

# Neovim configuration
echo "Setting up Neovim configuration..."
create_symlink "${DOTFILES_DIR}/init.lua" "${HOME}/.config/nvim/init.lua"

# Git configuration
echo "Setting up Git configuration..."
create_symlink "${DOTFILES_DIR}/gitconfig" "${HOME}/.gitconfig"
create_symlink "${DOTFILES_DIR}/gitignore_global" "${HOME}/.gitignore_global"

echo ""
echo "✓ Dotfiles setup complete!"
echo ""
echo "Next steps:"
echo "  - For system setup and secrets management, see macos-setup repository"
echo "  - For MCP configuration, see vibe repository"
