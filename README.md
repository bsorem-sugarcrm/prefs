# Installation

    curl -s https://raw.githubusercontent.com/bsorem-sugarcrm/prefs/master/install.sh | sh


# Manual Installation

## Prezto

[Installation Instructions](https://github.com/sorin-ionescu/prezto)

```
$ zsh
$ git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
$ setopt EXTENDED_GLOB
  for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done
$ chsh -s /bin/zsh
```

## Get this repo

    $ mkdir code && cd code
    $ curl -Lk https://github.com/bsorem-sugarcrm/prefs/archive/master.zip > prefs.zip
    $ unzip -a prefs.zip && rm -f prefs.zip
    $ cd prefs

## Copy Zsh settings

    $ ln -s ~/code/prefs/zsh/zpreztorc ~/.zpreztorc
    $ ln -s ~/code/prefs/zsh/zprofile ~/.zprofile

## Homebrew

    $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Brew Cask

    $ brew install caskroom/cask/brew-cask

## NVM

    $ curl https://raw.github.com/creationix/nvm/master/install.sh | sh

## Taps

    $ brew tap homebrew/services
    $ brew tap homebrew/dupes
    $ brew tap homebrew/versions
    $ brew tap homebrew/homebrew-php
    $ brew tap homebrew/science
    $ brew tap homebrew/python

## Casks

```
$ brew cask install alfred android-studio atom bettertouchtool cyberduck dropbox firefox github-desktop gitkraken imageoptim iterm2 java jing kitematic macdown namechanger nylas-n1 qlmarkdown sequel-pro sketch skitch sublime-text the-unarchiver vagrant virtualbox vivaldi vlc
$ brew cask cleanup
```

## Brews

```
$ brew install boost cmake composer curl docker elasticsearch freetype git go httpie imagemagick kafka libmemcached libsass libssh2 libyaml mcrypt memcached mongodb mysql openssl php53 php53-apc php53-igbinary php53-mcrypt php53-memcached php53-xdebug php54 php54-apc php54-igbinary php54-mcrypt php54-memcached php54-xdebug php56 phpdocumentor phpunit pkg-config rbenv redis rethinkdb sqlite wget zookeeper
$ brew cleanup
```

# Copy Zsh settings

    prefs/zsh/*


## PHP.ini

<strike>/usr/local/etc/php/5.3/php.ini</strike>

Symlink php.ini:

    ln -s /usr/local/etc/php/{{VERSION}}/php.ini /etc/php.ini

/etc/php.ini

    upload_max_filesize = 150M
    mysql.default_socket = /tmp/mysql.sock
    memory_limit = 4G
    display_errors = Off

## MySQL config

[Jerry's my.cnf](https://gist.githubusercontent.com/geraldclark/b841b36807aa5b761530/raw/ff447b0f852dcf81635713075be0c51bf6a85f7b/.my.cnf)

    $ brew services start mysql

## Apache Config

### /etc/apache2/httpd.conf

Add `LoadModules`

    LoadModule php5_module /usr/local/opt/php53/libexec/apache2/libphp5.so

    <Directory />
        #AllowOverride none
        #Require all denied
    </Directory>


    # Virtual hosts
    Include /private/etc/apache2/extra/httpd-vhosts.conf

### /etc/apache2/extra/httpd-userdir.conf

`Include /private/etc/apache2/users/*.conf`

### /etc/apache2/extra/httpd-vhosts.conf

Copy from /apache/


## Add User to www group

    $ sudo dseditgroup -o edit -a <USERNAME> -t user www
    $ sudo dseditgroup -o edit -a <USERNAME> -t user wheel


## Ignore Permissions Changes in Git

`git config core.fileMode false`

## Android

`brew cask install android-studio`

`brew install android-sdk`

## OpenCV

```
$ brew tap homebrew/science
$ brew install opencv
$ brew cleanup
```

## Atom Plugins

`$ apm install atom-beautify atom-ternjs autocomplete-php color-picker emmet highlight-line jshint linter linter-eslint merge-conflicts minimap pigments react tabs-to-spaces linter-phpcs tool-bar tool-bar-main simple-drag-drop-text docblockr auto-update-packages file-icons`

```
atom-beautify
atom-ternjs
autocomplete-php
color-picker
emmet
highlight-line
jshint
linter
linter-eslint
merge-conflicts
minimap
pigments
react
tabs-to-spaces
linter-phpcs
tool-bar
tool-bar-main
simple-drag-drop-text
docblockr
auto-update-packages
file-icons
```

### Optional

```
activate-power-mode
git-time-machine
```
