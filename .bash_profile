# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
# https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized
# http://geoff.greer.fm/lscolors/

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White

bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White

unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White

bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White

txtrst='\e[0m'    # Text Reset

PATH=$PATH:/usr/local/heroku/bin:/usr/local/git:$HOME/.rvm/bin:$HOME/Documents/scripts

HISTFILESIZE=9000
export CLICOLOR=1
export LSCOLORS=fxexcxdxbxegedabagacad
source ~/.rvm/scripts/rvm
alias ll='ls -al'
alias l='ls -al'
alias b='cd ..'
alias a='alias'
alias r='rails console'
alias p='pry'
alias h='history'
alias chyld='ssh -i /Users/chyld/Documents/ssh-keys/chyldnet.pem ubuntu@54.243.202.224'

custom_prompt()
{
  line=':------------------------------------------------------------------------------:'
  dir="$(pwd)"
  dirs="$(pwd | ruby ~/Documents/scripts/dir.rb)"
  files="$(pwd | ruby ~/Documents/scripts/file.rb)"
  all="$(pwd | ruby ~/Documents/scripts/all.rb)"
  time="$(date +"%H:%M:%S")"
  ip="$(ifconfig en1 | ruby ~/Documents/scripts/ip.rb)"
  branch="$(git status 2> /dev/null | ruby ~/Documents/scripts/branch.rb)"
  printf "$txtpur{$txtylw$dir$txtpur + $txtylw$all$branch$txtpur} $txtwht:>$txtrst"
}

PROMPT_COMMAND=custom_prompt
export PS1=" "
