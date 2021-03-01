#Ankit Josh (https://github.com/ankitjosh78)
# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='exa'
alias lsa='exa -la'
alias l='exa -l'
alias vim='nvim'
alias vi='vim'
alias nv='nvim'
alias nbash='nvim ~/.bashrc'
alias nzsh='nvim ~/.zshrc'
alias nxi='nvim ~/.xinitrc'
alias cdwm='cd ~/dwm'
alias dwmconf='nvim ~/dwm/config.def.h'
alias cst="cd ~/st"
alias stconf="nvim ~/st/config.def.h"
alias ncp='nvim ~/Documents/cp.cc +11'
alias getdwm='git clone https://github.com/ankitjosh78/dwm.git'
alias getst='git clone https://github.com/ankitjosh78/st.git'
alias mk='make'
alias rmconf='rm config.h'
alias mkinstall='sudo make clean install'
alias nconf='nvim ~/.config/nvim/init.vim'
alias update='sudo pacman -Syu'
alias lfrc='vim ~/.config/lf/lfrc'
alias nfish='vim ~/.config/fish/config.fish'
alias piconf='vim ~/.config/picom.conf'
alias dunstrc='vim ~/.config/dunst/dunstrc'
alias alaconf='vim ~/.config/alacritty/alacritty.yml'

PS1='[\u@\h \W]\$ '

#Hacky stuffs
bind 'set completion-ignore-case on'

#Scripts
#neofetch
#ufetch
export PATH="$HOME/.local/bin:$PATH"
#export PATH="$HOME/.cargo/bin:$PATH"
export EDITOR=nvim
eval "$(starship init bash)"
