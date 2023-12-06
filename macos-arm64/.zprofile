# Initialize Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# pyenv: Python Version Management
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Added by Toolbox App
export PATH="$PATH:/Users/lpham/Library/Application Support/JetBrains/Toolbox/scripts"
