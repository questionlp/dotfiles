# Add base sbin paths
export PATH="$PATH:/sbin:/usr/sbin"

# Initialize Homebrew path based on system architecture on macOS
if [[ $(uname) == "Darwin" ]]; then
    export HOMEBREW_NO_ANALYTICS=1
    if [[ $(arch) == "i386" && -f "/usr/local/bin/brew" ]]; then
        eval "$(/usr/local/bin/brew shellenv)"
    elif [[ $(arch) == "arm64" && -f "/opt/homebrew/bin/brew" ]]; then
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
fi

# Initialize pyenv
if [[ -d "$HOME/.pyenv" ]]; then
    export PYENV_ROOT="$HOME/.pyenv"
    command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init --path)"
fi

# Add JetBrains Toolbox to PATH in macOS
if [[ $(uname) == "Darwin" && -d "$HOME/Library/Application Support/JetBrains/Toolbox/scripts" ]]; then
    export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"
fi
