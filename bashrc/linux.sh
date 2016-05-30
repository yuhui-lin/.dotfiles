######################################
### Linux only - .bashrc
######################################

### import the general config
# it can be overwritten.
source ~/.dotfiles/bashrc/general.sh

alias ls='ls --color=auto'
alias ll='ls -Alh --color=auto'
alias la='ls -A --color=auto'
alias llg='ls -Alh --color=auto | grep -i'
alias sl='less -im /var/log/messages'

# virtualenvwrapper
if hash virtualenvwrapper_lazy.sh 2>/dev/null; then
    # export WORKON_HOME=$HOME/work/py-envs
    export WORKON_HOME=$HOME/.virtualenvs
    # export PROJECT_HOME=$HOME/Devel
    # export PROJECT_HOME=$HOME/work
    # this source is slow. use lazy source!
    # source /usr/local/bin/virtualenvwrapper.sh
    export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
    source /usr/local/bin/virtualenvwrapper_lazy.sh
fi
