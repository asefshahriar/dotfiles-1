export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Python from pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Matlab
export PATH="/Applications/MATLAB_R2016b.app/bin:$PATH"


# CLI colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Configure Editor
export EDITOR='vim'

# ALIASES
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# Tmuxinator completions
source ~/.bin/tmuxinator.bash

# Bash Prompt
PS1="\[\e]0;\u@\h: \W\a\]\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[00;36m\]\W\[\033[00m\]\$ "

# Fasd Init
eval "$(fasd --init auto)"
