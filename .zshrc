export ZSH="/Users/mrigankdoshy/.oh-my-zsh"

plugins=(git colored-man-pages pip python brew macos zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Path to Flutter
export PATH="$PATH:/Users/mrigankdoshy/flutter/bin"

# Path to VSCode
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

eval "$(starship init zsh)"
