# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias viz="vi -u /home/yinshucheng/.vimrc "

# unalias rm
# unalias mv
# unalias cp
alias grep="grep --color"

user=yinshucheng

################
# PS
################
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' -e 's/((/(/' -e 's/))/)/'
       }
 function proml {
     local GREEN="\[\033[0;32m\]"
     local COLOR_END="\033[0m"
     #PS1="[\u@\h:\w$GREEN\$(COLOR_END)] \n\$ "
 
     #PS1="\[\e[00;37m\][\[\e[0m\]\[\e[00;31m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;32m\]\H\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[01;33m\]\w\[\e[0m\]\[\e[00;37m\]]\n\[\e[0m\]\[\e[00;32m\]\\focus@monster$\[\e[0m\] "
 
     PS1="\[\e[00;37m\][\[\e[0m\]\[\e[00;34m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;32m\]\H\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[01;33m\]\w\[\e[0m\]\[\e[00;37m\]]\n\[\e[0m\]\[\e[00;36m\]focus@monster$\[\e[0m\] "

     #PS1="\[\e[00;37m\][\[\e[0m\]\[\e[00;34m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;32m\]\H\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[01;33m\]\w\[\e[0m\]\[\e[00;37m\]]\n\[\e[0m\][\e[00;34\]focus@monster$\[\e[0m\] "
 
     #PS1="[\u@\h:\W$GREEN\$(parse_git_branch)$COLOR_END]\n\$ "
 }
 proml
 
 export TERM=xterm-256color
 alias ls='ls --color'
 alias cl='clear'
 alias pikacli='~/redis/bin/redis-cli -p 92251'
 alias pikaser='./bin/pika -c ./conf/pika.conf'
 alias coding='cd ~/pika/third/nemo/tools/migator;vi pika_to_redis.cc'




