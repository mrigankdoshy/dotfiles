# Load zsh profiler module
# zmodload zsh/zprof

# Path configurations

# Path to oh my zsh
export ZSH="/Users/mrigankdoshy/.oh-my-zsh"

# Path to Flutter
export PATH="$PATH:/Users/mrigankdoshy/flutter/bin"

# Path to VS Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Path to Node Version Manager
export NVM_DIR="$HOME/.nvm"

# Path to Android SDK
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export ANDROID_HOME=~/Library/Android/sdk
export PATH="$HOME/.bin:$PATH"
export PATH="~/Library/Android/sdk/platform-tools":$PATH

# Additional path configuration
PATH=~/.console-ninja/.bin:$PATH

# Load Node Version Manager
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Plugins

plugins=(
    git                     # Git plugin
    nvm                     # Node Version Manager plugin
    pyenv                   # Python Environment plugin
    colored-man-pages       # Colored man pages plugin
    pip                     # Python package manager plugin
    python                  # Python plugin
    brew                    # Homebrew plugin
    macos                   # macOS plugin
    zsh-syntax-highlighting # Syntax highlighting plugin
    zsh-autosuggestions     # Autosugesstions plugin
)

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Initialize starship prompt
eval "$(starship init zsh)"

# Aliases
alias adb='/Users/$USER/Library/Android/sdk/platform-tools/adb'

# Profile zsh execution times
# zprof
