# zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode auto
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# git
git config --global user.name "yoichi ojima"
git config --global user.email "yoichiojima@gmail.com"

# brew
if [[ ":$PATH:" != *":/opt/homebrew/bin:"* ]]; then
    export PATH="/opt/homebrew/bin:$PATH"
fi

# pyenv
if [[ ":$PATH:" != *":$HOME/.pyenv/shims:"* ]]; then
    export PATH="$HOME/.pyenv/shims:$PATH"
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# openjdk
if [[ ":$PATH:" != *":$(brew --prefix openjdk):"* ]]; then
    export PATH="$(brew --prefix openjdk)/bin:$PATH"
fi

# hadoop
export HADOOP_CONF_DIR=$(brew --prefix hadoop)/libexec/etc/hadoop

# openai-rust
if [[ ":$PATH:" != *":$HOME/Developer/repo/openai-rust/target/release:"* ]]; then
    export PATH="$HOME/Developer/repo/openai-rust/target/release:$PATH"
fi

