export ZSH="/home/kozmer/.oh-my-zsh"

#ZSH_THEME="ys"
ZSH_THEME="xiong-chiamiov-plus"

plugins=(git zsh-syntax-highlighting k vi-mode)

source $ZSH/oh-my-zsh.sh

export VISUAL=vim
export EDITOR="$VISUAL"
export SUDO_EDITOR=/usr/bin/vim

#Binds
bindkey -M viins 'jk' vi-cmd-mode

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
alias e="exit"
alias c="clear"
alias pipuser='python3 -m pip install --user'
alias v='vim'
alias listening='netstat -tunlp'
alias obsidian='flatpak run md.obsidian.Obsidian'

export PATH="$HOME/.local/bin:$PATH"


export GPG_TTY=$(tty)

if [ ! -S ~/.ssh/ssh_auth_sock ]; then
    eval `ssh-agent`
      ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add ~/.ssh/github/key

export PATH="$PATH:$HOME/.spicetify"
