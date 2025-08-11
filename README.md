# Dotfiles

Central repository for all reusable configuration files.

## Contents

- `zshrc` - Zsh shell configuration
- `init.lua` - Neovim configuration (Lua-based)
- `gitconfig` - Git global configuration
- `gitignore_global` - Global Git ignore patterns
- `secrets.sh` - Secure secrets management using macOS Keychain
- `mcp-settings.template.json` - Template for MCP configurations
- `generate-mcp-config.sh` - Generate MCP config with secure secrets
- `setup.sh` - Script to create symlinks for configuration files
- `SECURITY.md` - Complete security guide for API keys and secrets

## Setup

```bash
# Clone this repository
git clone git@github.com:yoichiojima-2/dotfiles.git ~/Developer/repo/dotfiles

# Run setup script to create symlinks
cd ~/Developer/repo/dotfiles
./setup.sh

# Set up secure secrets management
source secrets.sh
secret_setup  # Interactive setup for API keys

# Generate secure MCP configuration
./generate-mcp-config.sh
```

## MCP Configuration Deployment

MCP settings are deployed through the `vibe` repository scripts:
- For Claude Desktop: `~/Developer/repo/vibe/claude_desktop.sh`
- For Gemini: `~/Developer/repo/vibe/gemini.sh`

## Philosophy

This repository contains only configuration files, no installation scripts.
For macOS system setup and application installation, see `macos-setup` repository.