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
<<<<<<< HEAD
alias dwmconf='nvim ~/dwm/config.h'
alias cst="cd ~/st"
alias cdmenu='cd ~/dmenu'
alias stconf="nvim ~/st/config.h"
alias ncp='cd ~/Documents/cp/ && nvim cp.cpp +11'
=======
alias dwmconf='nvim ~/dwm/config.def.h'
alias cdmenu='cd ~/dmenu'
alias cst="cd ~/st"
alias stconf="nvim ~/st/config.def.h"
alias ncp='nvim ~/Documents/cp.cc +11'
>>>>>>> f74dcb769b0b0cb2bb935a42c4f662f5892152e9
alias getdwm='git clone https://github.com/ankitjosh78/dwm.git'
alias getst='git clone https://github.com/ankitjosh78/st.git'
alias mk='make'
alias rmconf='rm config.h'
<<<<<<< HEAD
alias mkinstall='sudo make install'
=======
alias mkinstall='sudo make clean install'
>>>>>>> f74dcb769b0b0cb2bb935a42c4f662f5892152e9
alias nconf='nvim ~/.config/nvim/init.vim'
alias update='sudo pacman -Syu'
alias lfrc='vim ~/.config/lf/lfrc'
alias nfish='vim ~/.config/fish/config.fish'
alias piconf='vim ~/.config/picom.conf'
alias dunstrc='vim ~/.config/dunst/dunstrc'
alias alaconf='vim ~/.config/alacritty/alacritty.yml'
<<<<<<< HEAD
alias nf='neofetch'
alias mv='mv -iv'
alias cp='cp -iv'
alias ra='ranger'
alias urls='grep -o "https\?://\S*\.[A-Za-z]*\S*"'
alias mails='grep -o "[a-z]*\S*@\S\+\.\S\+"'
alias hang='cd ~/Documents/hang-movie-man/'
=======
alias cp='cp -iv'
alias mv='mv -iv'

>>>>>>> f74dcb769b0b0cb2bb935a42c4f662f5892152e9
PS1='[\u@\h \W]\$ '

#Hacky stuffs
bind 'set completion-ignore-case on'

#Scripts
#neofetch
#ufetch
export PATH="$HOME/.local/bin:$PATH"
#export PATH="$HOME/.cargo/bin:$PATH"
<<<<<<< HEAD
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
=======
export EDITOR=nvim
eval "$(starship init bash)"
>>>>>>> f74dcb769b0b0cb2bb935a42c4f662f5892152e9
