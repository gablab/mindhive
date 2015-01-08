# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
module load gcc
module load slurm 

#module add openmpi/gcc/64/1.6.5 
#module add openblas/sandybridge/0.2.6 
#module add lapack/gcc/64/3.4.2
#module add fftw3/openmpi/gcc/64/3.3.3 
#module add intel-cluster-checker/2.1.1 
#module add intel-cluster-runtime/intel64/3.6

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
#alias ls="ls --color=auto"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
# Project specific environments
source ~/.projects
source ~/.custom_env


