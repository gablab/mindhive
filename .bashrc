# Export PATHs
export PATH=/software/common/bin:$PATH

# Setup a fancy shell command prompt:
prompt1="\[\e[0;33m\][\A]\[\e[0m\]" # Display the time in the bash prompt
prompt2="\[\e[1;39m\]\u@\h:\W\$\[\e[0m\] " # Add username@host:dir$
promptinfo="./nodeload.sh"
PROMPT_COMMAND='PS1="\e[1;37m\e[44m${project_name}\e[0;0m${prompt1}`${promptinfo}`${prompt2}"'

# Aliases
alias ls="ls --color=auto"

# Setup the torque parallelization queue:
if [ $BASH ] && [[ $TERM == xterm* ]]
then
    source /etc/profile.d/modules.sh
    export LIBGL_ALWAYS_INDIRECT=yes
    module add torque
fi


