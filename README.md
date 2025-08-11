# Dotfiles

Central repository for all reusable configuration files.

## Contents

- `zshrc` - Zsh shell configuration
- `init.vim` - Neovim configuration
- `mcp-settings.json` - MCP server configurations for AI tools
- `claude-settings-local.json` - Claude-specific permission settings
- `setup.sh` - Script to create symlinks for configuration files

## Setup

```bash
# Clone this repository
git clone git@github.com:yoichiojima-2/dotfiles.git ~/Developer/repo/dotfiles

# Run setup script to create symlinks
cd ~/Developer/repo/dotfiles
./setup.sh
```

## MCP Configuration Deployment

MCP settings are deployed through the `vibe` repository scripts:
- For Claude Desktop: `~/Developer/repo/vibe/claude_desktop.sh`
- For Gemini: `~/Developer/repo/vibe/gemini.sh`

## Philosophy

This repository contains only configuration files, no installation scripts.
For macOS system setup and application installation, see `macos-setup` repository.