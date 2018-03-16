# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
module add openmind/git/2.7.0

# Export PATHs
export PATH=$HOME/bin:$PATH

# Setup a fancy shell command prompt:
prompt1="\[\e[0;33m\][\A]\[\e[0m\]" # Display the time in the bash prompt
prompt2="\[\e[1;39m\]\u@\h:\W\$\[\e[0m\] " # Add username@host:dir$
promptinfo="${HOME}/.nodeload"
PROMPT_COMMAND='PS1="\[\e[1;37m\e[44m\]${project_name}\[\e[0;0m\]${prompt1}`${promptinfo}`${prompt2}"'
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Aliases
alias ls="ls --color=auto"

# Project specific environments
source ~/.projects
