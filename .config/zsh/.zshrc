# ~/.config/zsh/.zshrc

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Basic key bindings
bindkey '^[[P' delete-char
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey '^[[3~' delete-char
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# Auto-cd
setopt AUTO_CD

# Source aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliases" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliases"

# Basic prompt
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Lazy load nvm
nvm() {
    unset -f nvm node npm
    [ -s "/usr/share/nvm/nvm.sh" ] && \. "/usr/share/nvm/nvm.sh"
    [ -s "/usr/share/nvm/bash_completion" ] && \. "/usr/share/nvm/bash_completion"
    nvm "$@"
}

node() {
    unset -f nvm node npm
    [ -s "/usr/share/nvm/nvm.sh" ] && \. "/usr/share/nvm/nvm.sh"
    node "$@"
}

npm() {
    unset -f nvm node npm
    [ -s "/usr/share/nvm/nvm.sh" ] && \. "/usr/share/nvm/nvm.sh"
    npm "$@"
}