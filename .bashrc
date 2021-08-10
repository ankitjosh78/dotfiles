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
alias dwmconf='nvim ~/dwm/config.h'
alias cst="cd ~/st"
alias cdmenu='cd ~/dmenu'
alias stconf="nvim ~/st/config.h"
alias ncp='cd ~/Documents/cp/ && nvim cp.cpp +11'
alias getdwm='git clone https://github.com/ankitjosh78/dwm.git'
alias getst='git clone https://github.com/ankitjosh78/st.git'
alias mk='make'
alias rmconf='rm config.h'
alias mkinstall='sudo make install'
alias nconf='nvim ~/.config/nvim/init.vim'
alias update='sudo pacman -Syu'
alias lfrc='vim ~/.config/lf/lfrc'
alias nfish='vim ~/.config/fish/config.fish'
alias piconf='vim ~/.config/picom.conf'
alias dunstrc='vim ~/.config/dunst/dunstrc'
alias alaconf='vim ~/.config/alacritty/alacritty.yml'
alias nf='neofetch'
alias mv='mv -iv'
alias cp='cp -iv'
alias ra='ranger'
alias urls='grep -o "https\?://\S*\.[A-Za-z]*\S*"'
alias mails='grep -o "[a-z]*\S*@\S\+\.\S\+"'
alias hang='cd ~/Documents/hang-movie-man/'
PS1='[\u@\h \W]\$ '

#Hacky stuffs
bind 'set completion-ignore-case on'

#Scripts
#neofetch
#ufetch
export PATH="$HOME/.local/bin:$PATH"
#export PATH="$HOME/.cargo/bin:$PATH"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=nvim
export TERMINAL=alacritty
export GREP_COLORS=red
eval "$(starship init bash)"

fcd(){
    cd "$(find -type d | fzf)"
}

open(){
    xdg-open "$(find -type f | fzf)"
}
#pfetch

#cat ~/.cache/wal/sequences &

# For tmux session as default
#if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#    tmux attach -t default || tmux new -s default
#fi
if [ -f 'which powerline-daemon' ]; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/share/powerline/bindings/bash/powerline.sh
fi
