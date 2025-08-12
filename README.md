# Dotfiles

Clean, minimal configuration files for development environment.

## Contents

### Core Configuration
- `zshrc` - Zsh shell configuration with oh-my-zsh
- `gitconfig` - Git global configuration with useful aliases
- `gitignore_global` - Global Git ignore patterns

### Editor
- `init.lua` - Neovim configuration (minimal, treesitter-based)

### Setup
- `setup.sh` - Script to create symlinks for configuration files

## Quick Setup

```bash
# Clone and setup
git clone <your-repo-url> ~/Developer/repo/dotfiles
cd ~/Developer/repo/dotfiles
./setup.sh
```

## Related Repositories

- **macos-setup** - System installation, secrets management, security guides
- **vibe** - MCP configuration and AI tooling deployment

## Philosophy

Pure configuration files only. No installation scripts, no bloat.
Each file serves a specific purpose and is kept minimal.