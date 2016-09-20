# BIN
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/bin
PATH=$PATH:/usr/sbin
PATH=$PATH:/bin
PATH=$PATH:/sbin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/opt/X11/bin
PATH=$PATH:/usr/local/mysql/bin
PATH=$PATH:$HOME/bin

export CODE=$HOME/code

# Editor
set -k
export EDITOR=atom
# Xdebug
export PHP_IDE_CONFIG='serverName=localhost'
export XDEBUG_CONFIG='idekey=phpstorm-xdebug'
# Golang
export GOPATH=$CODE/.go
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Alias'
alias getdate='date -j -f "%a %b %d %T %Z %Y" "`date`" "+%s" | pbcopy'
alias list="ls -go | awk '{print \$7;}'"
alias phptest="phpunit --configuration tests/phpuc.xml --coverage-html=custom/tests/cov/"
alias phplog="tail -f -n 20 /private/var/log/apache2/error_log"
alias slog="tail -f -n 20 $CODE/dock/sugarcrm.log"
alias sclog="tail -f -n 20 $CODE/scarlett/sugarcrm.log"
# Tensorflow env
alias tfa="source ~/code/personal/tensorflow/bin/activate"
alias tfd="deactivate"

# Functions
pvm() { bash $CODE/prefs/bin/pvm $1 }
dupfile() { cd $CODE/dock/upload && ls -la "$*" && ls -la "full/$*"* && cd -; }

# PHP
# PATH=$(brew --prefix homebrew/php/php54)/bin:$PATH
# source $(brew --prefix php-version)/php-version.sh && php-version 5.4

# JAVA
# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
setjdk() {
  export JAVA_HOME=$(/usr/libexec/java_home -v $1)
}
# default to 1.8
# setjdk 1.8

# Android
export ANDROID_HOME=/usr/local/opt/android-sdk

# RVM
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
rbinit() { "$(rbenv init -)"; }

# Node
export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh
