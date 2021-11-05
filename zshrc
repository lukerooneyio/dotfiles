echo 'Hello from .zshrc'

# Set Variables
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"


# Change ZSH Options

# Create Aliases
# alias ls='ls -lAFh'
alias exa='exa -laFh --git'
alias ls='exa -laFh --git'
alias man=batman
alias which='command -v'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'

# Customize Prompts
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:$N_PREFIX/bin"

# Write Handy Functions
function mkcd() {
   mkdir -p "$@" && cd "$_";
}

