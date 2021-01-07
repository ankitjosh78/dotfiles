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
alias cdwm='cd ~/dwm'
alias dwmconf='nvim ~/dwm/config.def.h'
alias cst="cd ~/st"
alias stconf="nvim ~/st/config.def.h"
alias ncp='nvim ~/Documents/cp.cc +10'
alias getdwm='git clone https://github.com/ankitjosh78/dwm.git'
alias getst='git clone https://github.com/ankitjosh78/st.git'
alias mk='make'
alias rmconf='rm config.h'
alias mkinstall='sudo make clean install'
alias nconf='nvim ~/.config/nvim/init.vim'
alias update='sudo pacman -Syu'

PS1='[\u@\h \W]\$ '

#neofetch

