#Ankit Josh (https://github.com/ankitjosh78)
# ~/.zshrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# History in cache directory:
HISTSIZE=10000
HISTFILE='~/.cache/zsh/history'
SAVEHIST=10000

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
# Aliases
alias ls='exa'
alias lsa='exa -la'
alias l='exa -l'
#alias vim='nvim'
alias vi='vim'
alias nv='nvim'
alias nbash='nvim ~/.bashrc'
alias nzsh='nvim ~/.zshrc'
alias nxi='nvim ~/.xinitrc'
alias cdwm='cd ~/.local/share/dwm'
alias dwmconf='nvim ~/.local/share/dwm/config.h'
alias cst="cd ~/.local/share/st"
alias cdmenu='cd ~/.local/share/dmenu'
alias stconf="nvim ~/.local/share/st/config.h"
alias ncp='cd ~/Documents/cp/ && nvim cp.cpp +11'
alias getdwm='git clone https://github.com/ankitjosh78/dwm.git ~/.local/share/'
alias getst='git clone https://github.com/ankitjosh78/st.git ~/.local/share/'
alias getdmenu='git clone https://github.com/ankitjosh78/dmenu.git ~/.local/share/'
alias getdwmblocks='git clone https://github.com/ankitjosh78/dwmblocks.git ~/.local/share/'
alias getscripts='git clone https://github.com/ankitjosh78/.local-bin-scripts/ --depth=1 ~/test/bin/'
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
alias nf='neofetch'
alias mv='mv -iv'
alias cp='cp -iv'
alias dev='cd ~/Documents/ && nvim'
alias ra='ranger'
alias urls='grep -o "https\?://\S*\.[A-Za-z]*\S*"'
alias mails='grep -o "[a-z]*\S*@\S\+\.\S\+"'
alias hang='cd ~/Documents/hang-movie-man/'
PS1='[\u@\h \W]\$ '


#Scripts
#neofetch
#ufetch
export PATH="$HOME/.local/bin:$PATH"
#export PATH="$HOME/.cargo/bin:$PATH"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=nvim
export TERMINAL=alacritty

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
#source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh > /dev/null 
eval "$(starship init zsh)"
#cat ~/.cache/wal/sequences
