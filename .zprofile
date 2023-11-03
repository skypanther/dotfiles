export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
export PATH="/usr/local/opt/libpq/bin:$HOME/.local/bin:$PATH"

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval $(pyenv init --path)

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# Setting PATH for Python 3.8
# The original version is saved in .zprofile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
# export PATH
