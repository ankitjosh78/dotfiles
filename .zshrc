#!/bin/sh
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx --vt1

# aliases
alias ls='ls --color=auto'
alias ex='exa'
alias exa='exa -l'
alias lsa='ls -la'
alias l='ls -l'
alias v='nvim'
alias vim='nvim'
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
alias nfish='nvim ~/.config/fish/config.fish'

# Path to your oh-my-zsh installation.
export ZSH="/home/ankitjosh78/.oh-my-zsh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

#neofetch
#ufetch
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export EDITOR=nvim
/opt/shell-color-scripts/colorscripts/crunchbang-mini
export LC_ALL=en_US.UTF-8
eval "$(starship init zsh)"
