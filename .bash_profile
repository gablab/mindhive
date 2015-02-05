# Permissions
umask 0002

# If not running interactively, we're done
[ -z "$PS1" ] && return
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
source ~/.bashrc
