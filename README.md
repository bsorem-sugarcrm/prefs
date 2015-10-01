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

## Homebrew

    $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Brew Cask

    $ brew install caskroom/cask/brew-cask

## NVM

    $ brew install nvm

<strike>curl https://raw.github.com/creationix/nvm/master/install.sh | sh</strike>

## Taps

    $ brew tap homebrew/php
    $ brew tap homebrew/services

## Install JVM

[Download](http://www.oracle.com/technetwork/java/javase/downloads/index.html)

or

`brew cask install java`

## Casks

```
$ brew cask install atom jing cyberduck imageoptim github firefox kitematic macdown namechanger sequel-pro vagrant virtualbox vlc skitch dropbox
$ brew cask cleanup
```

## Install Sublime Text

    $ ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

## Brews

```
$ brew install boost boot2docker cmake php53 php53-apc php53-mcrypt php53-memcached php53-xdebug composer curl docker elasticsearch git go httpie imagemagick jruby libmemcached libpng libssh2 libyaml mcrypt memcached mongodb mysql openssl  phpunit pkg-config qt rbenv ruby-build redis rethinkdb sqlite wget
$ brew cleanup
```

# Copy Zsh settings

    prefs/zsh/*


## PHP.ini

<strike>/usr/local/etc/php/5.3/php.ini</strike>

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

    Include /private/etc/apache2/users/*.conf

### /etc/apache2/extra/httpd-vhosts.conf

Copy from /apache/


## Add User to www group

    $ sudo dseditgroup -o edit -a <USERNAME> -t user www
    $ sudo dseditgroup -o edit -a <USERNAME> -t user wheel


## Android

`brew cask install android-studio`

`brew install android-sdk`



## Repos

Checkout these repos:


Ignore permission changes:

`git config core.fileMode false`