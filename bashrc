HISTCONTROL=ignoredups:ignorespace
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

set -o vi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

export PS1="\[\e]2;\u@\h \w\a\e[32;1m\][\h \A \W ]$\[\e[0m\] "

complete -d cd rmdir

export NOSE_INCLUDE_EXE=1
