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
create_symlink "${DOTFILES_DIR}/init.vim" "${HOME}/.config/nvim/init.vim"

# Git configuration
echo "Setting up Git configuration..."
create_symlink "${DOTFILES_DIR}/gitconfig" "${HOME}/.gitconfig"
create_symlink "${DOTFILES_DIR}/gitignore_global" "${HOME}/.gitignore_global"

# MCP/Claude configuration (for reference, not symlinked)
echo ""
echo "MCP configuration files available:"
echo "  - ${DOTFILES_DIR}/mcp-settings.json"
echo "  - ${DOTFILES_DIR}/claude-settings-local.json"
echo ""
echo "To deploy MCP settings:"
echo "  - For Claude Desktop: Use vibe/claude_desktop.sh"
echo "  - For Gemini: Use vibe/gemini.sh"

echo ""
echo "Dotfiles setup complete!"
