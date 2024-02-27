#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
PATH=$HOME/.local/bin:$PATH

neofetch
eval "$(starship init bash)"
#pfetch
#freshfetch
export PATH=$PATH:/home/akshayk/.spicetify

source /usr/share/bash-completion/bash_completion
# Load Angular CLI autocompletion.
source <(ng completion script)


