function set-title() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
}

alias pyl="pylint-3 --rcfile=$HOME/.pub_include/.pylintrc"
alias randstring="openssl rand -base64 32"

function greppy() { grep -n -r --include=*.py "$@" . ;}
function grepdef() { grep -n -r -A 4 --include=*.py "def $1" . ;}
function grepjs() { grep -n -r --include=*.js --include=*.html --exclude=jquery*js --exclude=modernizr*.js --exclude=concat_footer.js "$@" . ;}
function grepnr() { grep -n -r "$@" . ;}
function timestamp() { echo $(date +%s) ; }

