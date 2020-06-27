#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias server='ssh aferreira@148.204.64.108'
alias i3conf='vim /home/aferreira/.config/i3/config'
triangle=$'\uE0B0'
PS1="\[\033[48;5;0m\] \u@\h \[$(tput sgr0)\]\[\033[38;5;0m\]\[\033[48;5;7m\]${triangle}\[$(tput sgr0)\]\[\033[38;5;0m\]\[\033[48;5;7m\] \w \[$(tput sgr0)\]\[\033[37m\]${triangle}\[$(tput sgr0)\] "
source ~/.environ.sh
setxkbmap latam
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
