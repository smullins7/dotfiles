# things to add to a fresh zshrc
plugins=(git poetry)

alias hh="history | tail -30"
alias list-functions="ls -1 ~/.oh-my-zsh/functions/*"

export PATH="~/bin:$PATH"

# get rid of highlighted percent symbol on unterminated lines
PROMPT_EOL_MARK=''


# poetry bin
export PATH="$HOME/.local/bin:$PATH"


source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"


# Golang stuff
export GOPATH=$(go env GOPATH)


# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# brew
export PATH="/usr/local/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

# fixes this warning with poetry:
# SetuptoolsDeprecationWarning: setup.py install is deprecated. Use build and pip and other standards-based tools
export SETUPTOOLS_USE_DISTUTILS=stdlib
