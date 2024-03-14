#!/bin/zsh

# Xcode Command Line Tools
echo "Installing Xcode Command Line Tools..."
xcode-select --install

# Homebrew
## Install
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

## Taps
echo "Tapping Homebrew..."
brew tap homebrew/cask-fonts

## Formulae
echo "Installing Homebrew Formulae..."
### Essentials
brew install git
brew install gh

### Terminal
brew install zsh
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install starship

### Development
brew install node
brew install nvm
brew install typescript
brew install cocoapods

## Casks
echo "Installing Homebrew Casks..."
### Terminals and Editors
brew install --cask warp
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask sublime-text

### Browsers
brew install --cask google-chrome

### Frameworks and SDKs
brew install --cask flutter

### Nice to have
brew install --cask spotify
brew install --cask slack
brew install --cask discord

### Fonts
brew install --cask font-meslo-lg-nerd-font
brew install --cask font-jetbrains-mono

### Oh my zsh
echo "Installing Oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# App Store Apps
echo "Installing App Store Apps..."
## Xcode
mas install 497799835

# Copying and checking out configuration files
echo "Copying and checking out configuration files..."
[ ! -d "$HOME/dotfiles" ] && git clone --bare git@github.com:mrigankdoshy/dotfiles.git $HOME/dotfiles
git --git-dir=$HOME/dotfiles/ --work-tree=$HOME checkout main

source $HOME/.zshrc

echo "Installation complete...\n"
