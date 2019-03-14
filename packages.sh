#!/usr/bin/env bash
xcode-select --install

# === Section: brew ===
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# == GNU Tools
brew install coreutils
brew install moreutils
brew install gnu-sed --with-default-names
brew install grep
brew install ssh-copy-id

# == Bash
brew install bash
brew install bash-git-prompt
brew install bash-completion2
brew install vagrant-completion

# == Utilities
brew install dropbox
brew install terraform
brew install doctl
brew install forklift
brew install viscosity
brew install 1password
brew install 1password-cli
brew install tree
brew install ripgrep
brew install fd
brew install pgadmin4
brew install autojump
brew install watch
brew install python3

# == Git
brew install git
brew install git-extras

# == GPG
# https://gist.github.com/bmhatfield/cc21ec0a3a2df963bffa3c1f884b676b#gistcomment-2165971
brew install gnupg
brew install pinentry-mac
mkdir ~/.gnupg
echo "pinentry-program /usr/local/bin/pinentry-mac" > ~/.gnupg/gpg-agent.conf


# == Cask
brew cask install adobe-acrobat-reader
brew cask install dbeaver-community
brew cask install brooklyn
brew cask install coconutbattery
brew cask install decrediton
brew cask install docker
brew cask install firefox
brew cask install forklift
brew cask install gitup
brew cask install google-chrome
brew cask install hammerspoon
brew cask install keybase
brew cask install pgadmin4
brew cask install resilio-sync
brew cask install signal
brew cask install slack
brew cask install spaceradar
brew cask install spotify
brew cask install steam
brew cask install telegram
brew cask install vagrant
brew cask install viscosity
brew cask install wireshark

brew cleanup

# Switch to using brew-installed bash as default shell.
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;
