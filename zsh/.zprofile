# Alias'

# git status
alias gs="git status -s"
alias cgs="clear && git status -s"
gb() {
  if [[-z $1]]; then
    git branch
  else
    git checkout -b $1
  fi
}

alias getdate='date -j -f "%a %b %d %T %Z %Y" "`date`" "+%s" | pbcopy'
alias list="ls -go | awk '{print \$7;}'"
alias phptest="phpunit --configuration tests/phpuc.xml --coverage-html=custom/tests/cov/"
alias phplog="tail -f -n 20 /private/var/log/apache2/error_log"

# sugarfuel alias'
alias ccc="cd ~/code/SugarFuel && php oil r SugarFuel:clearclientcache dock && cd -"
alias cca="cd ~/code/SugarFuel && php oil r SugarFuel:clearCache dock && cd -"
alias re="cd ~/code/SugarFuel && php oil r SugarFuel:quickRepair dock && cd -"

# Golang
export GOPATH=$HOME/code/.go
export PATH=$PATH:/usr/local/opt/go/libexec/bin

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
