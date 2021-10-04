echo 'Hello from .zshrc'

# Set Variables
export HOMEBREW_CASK_OPTS="--no-quarantine"


# Change ZSH Options

# Create Aliases
# alias ls='ls -lAFh'
alias exa='exa -laFh --git'
alias ls='exa -laFh --git'
alias man=batman
alias which='command -v'
alias bbd='brew bundle dump --force --describe'

# Customize Prompts
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Write Handy Functions
function mkcd() {
   mkdir -p "$@" && cd "$_";
}

