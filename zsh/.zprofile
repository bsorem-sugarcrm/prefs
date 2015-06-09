# Alias'

# git status
alias gs="git status -s "
alias gb="git checkout -b "
alias getdate='date -j -f "%a %b %d %T %Z %Y" "`date`" "+%s" | pbcopy'
alias cgs="clear && git status -s"
alias list="ls -go | awk '{print \$7;}'"
alias test="phpunit --configuration tests/phpuc.xml --coverage-html=custom/tests/cov/"
alias phplog="tail -f -n 20 /private/var/log/apache2/error_log"
alias brackets="open -a Brackets "

# sugarfuel alias'
alias ccc="cd ~/Sites/Sugar/SugarFuel && php oil r SugarFuel:clearclientcache dock && cd -"
alias cca="cd ~/Sites/Sugar/SugarFuel && php oil r SugarFuel:clearCache dock && cd -"
alias re="cd ~/Sites/Sugar/SugarFuel && php oil r SugarFuel:quickRepair dock && cd -"

# MySQL
export PATH=$PATH:/usr/local/mysql/bin
# Golang
export GOPATH=$HOME/Sites/.go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
# NVM
PATH=$PATH:$HOME/.nvm/v0.10.31/bin
# BIN
PATH=$PATH:/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/mysql/bin:$HOME/bin
# PHP
PATH=$(brew --prefix homebrew/php/php53)/bin:$PATH


# JAVA
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
setjdk() {
  export JAVA_HOME=$(/usr/libexec/java_home -v $1)
}

# RVM
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi



. ~/.nvm/nvm.sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


alias nw='/opt/homebrew-cask/Caskroom/node-webkit/0.10.2/node-webkit-v0.10.2-osx-x64/node-webkit.app/Contents/MacOS/node-webkit'
alias node-webkit='node-webkit'

# DOCKER
eval "$(dvm env)"
