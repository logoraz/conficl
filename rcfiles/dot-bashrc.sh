# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc


#
# Customizations
#

# General Env
export LC_COLLATE=C
export EDITOR=Lem
export BROWSER=Nyxt

# XDG Env
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

# Aliases
alias ll='ls -l'
alias la='ls -la'


#
# PATHS
#

#Qlot Source
qlot=$HOME/.qlot/bin

# Lem Source
lem=$XDG_DATA_HOME/common-lisp/lem

# Common Lisp Development and Lem Hacking!
export PATH="$qlot:$lem:$PATH"



