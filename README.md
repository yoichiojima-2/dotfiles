# Dotfiles

Clean, minimal configuration files for development environment.

## Contents

### Core Configuration
- `zshrc` - Zsh shell configuration with oh-my-zsh
- `gitconfig` - Git global configuration with useful aliases
- `gitignore_global` - Global Git ignore patterns

### Editor
- `init.lua` - Neovim configuration (minimal, treesitter-based)

### Terminal
- `tmux.conf` - Tmux configuration

### Setup
- `setup.sh` - Script to create symlinks for configuration files

## Quick Setup

```bash
# Clone and setup
git clone git@github.com:yoichiojima-2/dotfiles.git ~/Developer/repo/dotfiles
cd ~/Developer/repo/dotfiles
./setup.sh
```

## Related Repositories

- [**vibe**](https://github.com/yoichiojima-2/vibe) - MCP configuration and AI tooling deployment

## Philosophy

Pure configuration files only — `setup.sh` just symlinks them into place.
Each file serves a specific purpose and is kept minimal.