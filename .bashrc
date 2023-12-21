export PATH=${PATH}:${HOME}/bin:${HOME}/pub_bin
export EDITOR=vim
export VISUAL=vim


alias ccat="pygmentize"
alias cddw="cd ${HOME}/Downloads"
alias cdprj="cd ${HOME}/projects"
alias cdrg="cd /run/media/${USER}"
alias hist20="history | tail -n 20"
alias ls20="ls -altr | tail -n 20"
alias pyl="pylint-3 --rcfile=$HOME/pub_include/.pylintrc"
alias pyl3="pylint-3 --rcfile=$HOME/pub_include/.pylintrc"
alias pyl2="pylint --rcfile=$HOME/pub_include/.pylintrc"
alias rnaut="nautilus --browser --no-desktop &"

alias randstring="openssl rand -base64 32"
alias timestamp="date +%s"
alias gitstat='git status | head -n 30'

function untrail() { sed -i 's/[ \t]*$//' "$1" ;}

function jpretty() { cat "$1" | python -m json.tool ;}
function  pdb() { python -m pdb "$@" ;}
function  pdb2() { python2 -m pdb "$@" ;}
function  pdb3() { python3 -m pdb "$@" ;}
function yesterday() { expr $(date +%s) - 86400 ;}
function daysago() { expr $(date +%s) - 86400 "*" $1 ;}
function greppy() { grep -n -r --include=*.py "$@" . ;}
function grepdef() { grep -n -r -A 4 --include=*.py "def $1" . ;}
function grepjs() { grep -n -r --include=*.js --include=*.html --exclude=jquery*js --exclude=modernizr*.js --exclude=concat_footer.js "$@" . ;}
function grepnr() { grep -n -r "$@" . ;}
function grepfilter() { sed -nr "s/.*$1.*/\1/p" $2 ;} # https://stackoverflow.com/questions/58379142/grep-how-to-output-only-the-content-of-a-capturing-group. sucks, use grepgroup.py instead
function set-title() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
}

