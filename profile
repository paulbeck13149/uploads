# Set XDG base directory paths for user configuration, data, and cache
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Shell and history configuration
export HISTFILE="$XDG_DATA_HOME/history"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTSIZE=10000
export SAVEHIST=10000

# Development and programming paths

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export NVM_DIR="$HOME/.config/nvm"
export GEM_HOME="$XDG_DATA_HOME/gem"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"
export PYTHONSTARTUP="$XDG_DATA_HOME/python/pythonrc"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"


export WALLPAPER_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/wallpapers"

# X11 and display configuration
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
#export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export _JAVA_AWT_WM_NONREPARENTING=1

# Audio configuration
export PIPEWIRE_RUNTIME_DIR="$XDG_RUNTIME_DIR/pipewire"
#export MPD_HOST="$XDG_RUNTIME_DIR/mpd/socket"
#export MPD_PORT=6600

# Application data and cache directories
#export ELECTRUMDIR="$XDG_DATA_HOME/electrum"
export TRANSMISSION_HOME="$XDG_CONFIG_HOME/transmission"
export CALCURSE_DIR="$XDG_CONFIG_HOME/calcurse"
export NEWSBOAT_CONFIG_DIR="$XDG_CONFIG_HOME/newsboat"
export TASKDATA="$XDG_DATA_HOME/task"
export TASKRC="$XDG_CONFIG_HOME/task/taskrc"
export _JAVA_OPTIONS=Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
#export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

# Security and network configuration
#export GNUPGHOME="$XDG_DATA_HOME/gnupg"
#export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
#export MULLVAD_DIR="$XDG_CONFIG_HOME/mullvad-vpn"
#export TOR_BROWSER_DIR="$XDG_DATA_HOME/tor-browser"
#export I2P_DATA_DIR="$XDG_DATA_HOME/i2p"

# Default applications
export EDITOR="nvim"
#export VISUAL="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"
export FILE="lf"
export IMAGE="nsxiv"
export VIDEO="mpv"

# Path additions
export PATH="$PATH:$CARGO_HOME/bin:$GOPATH/bin:$HOME/.local/bin"

# Load NVM and its bash completion
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Ensure XDG user directories are set up
#[ -x "$(command -v xdg-user-dirs-update)" ] && xdg-user-dirs-update

# Start SSH agent if not running
#if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
#fi
#if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
#    source "$XDG_RUNTIME_DIR/ssh-agent.env" > /dev/null
#fi

# Set common color defaults for both shells
export LS_COLORS="$(dircolors -b)"
export CLICOLOR=1

# Load common aliases if file exists
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliases" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliases"

# npm
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# Node.js
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
