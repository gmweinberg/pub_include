export PATH=${PATH}:${HOME}/bin:${HOME}/pub_bin

alias cddw="cd ${HOME}/Downloads"
alias cdrg="cd /run/media/${USER}"
alias hist20="history | tail -n 20"
alias pyl="pylint-3 --rcfile=$HOME/pub_include/.pylintrc"
alias pyl3="pylint-3 --rcfile=$HOME/pub_include/.pylintrc"
alias pyl2="pylint --rcfile=$HOME/pub_include/.pylintrc"

alias randstring="openssl rand -base64 32"
alias timestamp="date +%s"
alias gitstat='git status | head -n 30'

function greppy() { grep -n -r --include=*.py "$@" . ;}
function grepdef() { grep -n -r -A 4 --include=*.py "def $1" . ;}
function grepjs() { grep -n -r --include=*.js --include=*.html --exclude=jquery*js --exclude=modernizr*.js --exclude=concat_footer.js "$@" . ;}
function grepnr() { grep -n -r "$@" . ;}
function timestamp() { echo $(date +%s) ; }
function set-title() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
}

