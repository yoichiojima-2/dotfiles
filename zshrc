# zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode auto
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# brew
if [[ ":$PATH:" != *":/opt/homebrew/bin:"* ]]; then
    export PATH="/opt/homebrew/bin:$PATH"
fi

# pyenv
if command -v pyenv >/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# openjdk
if command -v brew >/dev/null 2>&1 && brew list openjdk >/dev/null 2>&1; then
    export PATH="$(brew --prefix openjdk)/bin:$PATH"
fi

# hadoop
if command -v brew >/dev/null 2>&1 && brew list hadoop >/dev/null 2>&1; then
    export HADOOP_CONF_DIR="$(brew --prefix hadoop)/libexec/etc/hadoop"
fi

# openai-rust
OPENAI_RUST_BIN="$HOME/Developer/repo/openai-rust/target/release"
if [[ -d "$OPENAI_RUST_BIN" && ":$PATH:" != *":$OPENAI_RUST_BIN:"* ]]; then
    export PATH="$OPENAI_RUST_BIN:$PATH"
fi

# secrets management
SECRETS_FILE="$HOME/Developer/repo/macos-setup/scripts/secrets.sh"
if [[ -f "$SECRETS_FILE" ]]; then
    source "$SECRETS_FILE"
fi
