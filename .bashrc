#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx --vt1

alias ls='ls --color=auto'
alias lsa='ls -la'
alias l='ls'
alias nv='nvim'
alias nbash='nvim ~/.bashrc'
alias nzsh='nvim ~/.zshrc'
alias nxi='nvim ~/.xinitrc'
alias cdwm='cd ~/dwm-6.2'
alias dwmconf='nvim ~/dwm-6.2/config.def.h' 
alias nconf='nvim ~/.config/nvim/init.vim'
alias update='sudo pacman -Syyu'
PS1='[\u@\h \W]\$ '

#neofetch

