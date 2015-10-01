export CODE=$HOME/code

# Alias'

alias getdate='date -j -f "%a %b %d %T %Z %Y" "`date`" "+%s" | pbcopy'
alias list="ls -go | awk '{print \$7;}'"
alias phptest="phpunit --configuration tests/phpuc.xml --coverage-html=custom/tests/cov/"
alias phplog="tail -f -n 20 /private/var/log/apache2/error_log"
alias slog="tail -f -n 20 $CODE/dock/sugarcrm.log"

# sugarfuel alias'
alias ccc="cd $CODE/SugarFuel && php oil r SugarFuel:clearclientcache dock && cd -"
alias cca="cd $CODE/SugarFuel && php oil r SugarFuel:clearCache dock && cd -"
alias re="cd $CODE/SugarFuel && php oil r SugarFuel:quickRepair dock && cd -"

sf() { cd $CODE/SugarFuel && php oil r SugarFuel:"$*" dock && cd -; }

# Golang
export GOPATH=$CODE.go
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# BIN
PATH=/usr/local/sbin:$PATH:/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/mysql/bin:$HOME/bin
# PHP
PATH=$(brew --prefix homebrew/php/php54)/bin:$PATH
# Xdebug
export PHP_IDE_CONFIG='serverName=localhost'
export XDEBUG_CONFIG='idekey=phpstorm-xdebug'


# JAVA
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
setjdk() {
  export JAVA_HOME=$(/usr/libexec/java_home -v $1)
}

# Android
export ANDROID_HOME=/usr/local/opt/android-sdk

# RVM
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Node
source $(brew --prefix nvm)/nvm.sh
