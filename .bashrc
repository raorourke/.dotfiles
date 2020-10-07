# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:/usr/include/python3.8:$HOME/.poetry/bin:$PATH"
export PATH
GITHUB="$HOME/GitHub"
export GITHUB

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

. ~/.bash_functions
. ~/.bash_aliases
. ~/.app-env 

source /home/ryan/.bash_completions/typer.sh
source /home/ryan/.rvm/scripts/rvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$HOME/.rvm/bin:$PATH"
