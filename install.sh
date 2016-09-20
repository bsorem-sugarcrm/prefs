#!/bin/bash
CODEDIR=code

# install prezto
zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s /bin/zsh

# get prefs
mkdir $HOME/$CODEDIR && cd $HOME/$CODEDIR
curl -Lk https://github.com/bsorem-sugarcrm/prefs/archive/master.zip > prefs.zip
unzip -a prefs.zip && rm -f prefs.zip
cd prefs

## Copy Zsh settings
ln -s $HOME/code/prefs/zsh/zpreztorc $HOME/.zpreztorc
ln -s $HOME/code/prefs/zsh/zprofile $HOME/.zprofile

## MAC
if [[ "$(uname)" = "Darwin" ]]; then
  ## Homebrew
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  ## Brew Cask
  brew install caskroom/cask/brew-cask
  ## Taps
  brew tap homebrew/services
  brew tap homebrew/dupes
  brew tap homebrew/versions
  brew tap homebrew/homebrew-php
  brew tap homebrew/science
  brew tap homebrew/python
  brew tap homebrew/apache

  ## Casks
  brew cask install alfred android-studio atom bettertouchtool cyberduck dropbox firefox github-desktop gitkraken hyperterm imageoptim iterm2 java jing kitematic macdown namechanger nylas-n1 qlmarkdown sequel-pro sketch skitch sublime-text the-unarchiver vagrant virtualbox vivaldi vlc

  ## Brews
  brew install boost cmake composer curl diff-so-fancy docker elasticsearch freetype git go httpie imagemagick kafka libmemcached libsass libssh2 libyaml mariadb mcrypt memcached mongodb openssl pkg-config rbenv redis rethinkdb sqlite wget zookeeper
  ## PHP brews
  brew install php53 php53-apc php53-igbinary php53-mcrypt php53-memcached php53-xdebug php54 php54-apc php54-igbinary php54-mcrypt php54-memcached php54-xdebug php56 phpdocumentor phpunit php-code-sniffer

  ## OpenCV
  brew install opencv

  # brew cleanup
  brew cleanup
  brew cask cleanup

  # install Atom packages
  apm install atom-beautify atom-ternjs autocomplete-php color-picker editorconfig emmet highlight-line jshint linter linter-eslint merge-conflicts minimap pigments react tabs-to-spaces todo-show linter-phpcs tool-bar tool-bar-main simple-drag-drop-text docblockr auto-update-packages file-icons

  # ignore perm changes in git
  git config core.fileMode false

  # iterm2 prefs
  cp $HOME/code/prefs/iterm2.xml $HOME/Documents/iTerm/com.googlecode.iterm2.plist
else
  # linux
  apt-get update
fi

## NVM
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

source $HOME/.zpreztorc
