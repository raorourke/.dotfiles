# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:/usr/include/python3.8:$PATH"
export PATH
GITHUB="/home/github"
export GITHUB

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

. ~/.myfunctions
. ~/.myaliases
. ~/.app-env 
