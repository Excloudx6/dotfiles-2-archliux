# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/crispy/.config/zsh/.oh-my-zsh"

export VISUAL=nvim
export EDITOR="$VISUAL"
export SUDO_EDITOR=/usr/bin/nvim
export MPD_HOST=$HOME/.config/mpd/socket

[[ $TMUX = "" ]] && export TERM="st-256color"

ZSH_THEME="aussiegeek"

# Plugins
plugins=(git zsh-syntax-highlighting k vi-mode)

source $ZSH/oh-my-zsh.sh

#Binds
bindkey -M viins 'jk' vi-cmd-mode

# Clear history
function clear_history { local HISTSIZE=0; }

# Find a file with a pattern in name:
function ff()
{
    find . -type f -iname '*'"$*"'*' -ls ;
}

### aliases
alias free="free -mt"
alias ps="ps auxf"
alias myip="curl ipecho.net/plain; echo"
alias torip="curl ipecho.net/plain --socks5 localhost:9050 --socks5-hostname localhost:9050; echo"
alias grep='grep --color=auto'
alias tkill="tmux kill-session" 
alias zshr="source ~/.config/zsh/.zshrc"
alias e="exit"
alias c="clear"
alias cat="ccat"
alias ytm='youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 -o "%(title)s.%(ext)s" --no-cache-dir --no-call-home'
alias pipuser='pip install --user'
alias v='nvim'
alias discfetch="fetchcord --nodistro --nohardware --nohost &"
alias google='googler -n 5 -x --np --colors=nodgiy'
alias ddgr='ddgr -n 5 -x --np --colors=nodgiy'
alias listening='netstat -tunlp'

alias load="killall st"
alias use="xrdb merge"

### Lang
export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8
export LANGUAGE=en_GB.UTF-8
export GPG_TTY=$(tty)

### Paths
export PATH="$HOME/scripts:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export BROWSER=/usr/bin/firefox-bin
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin


# fixes ghidra white screen
export _JAVA_AWT_WM_NONREPARENTING=1
