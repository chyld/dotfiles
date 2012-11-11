# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
# https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized
# http://geoff.greer.fm/lscolors/

txtblk='\[\e[0;30m\]' # Black
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
txtrst='\[\e[0m\]'    # Text Reset

PATH=/usr/local/heroku/bin:/usr/local/git/bin:$HOME/.rvm/bin:$HOME/Documents/scripts:$PATH

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

function branch
{
  git status 2> /dev/null | ruby ~/Documents/scripts/branch.rb
}

echo "----------------------------------------------------------------"
echo "$(git --version)"
echo "$(ruby -v)"
echo "$(rails -v)"
echo "----------------------------------------------------------------"
PS1="$txtylw\w\$(branch)$txtwht ∴$txtrst "
