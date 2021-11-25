echo 'Hello from .zshenv'

export HOMEBREW_CASK_OPTS="--no-quarantine --no-binaries"
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

function exists() {
   # 'command -v' is similar to 'which'
   command -v $1 >/dev/null 2>&1
   
   # More explicityly written:
   # command -v $1 >/dev/null 2>/dev/null
}

