# .bash_aliases

# User specific aliases
alias ..="cd .."
alias ...="cd ../.."
alias rmdir="rmdir --ignore-fail-on-non-empty"
alias dnf="sudo dnf"
alias mkdir="mkdir -pv"
alias mount="sudo mount"
alias umount="sudo umount"
alias dnf-install="sudo dnf install -y"
alias dnf-update="sudo dnf update -y"
alias python3-install="python3 -m pip install --user"
alias backup="sudo rsync -aAXv / --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home/ryan/.cache/*","/home/ryan/Documents/Red-Hat-Student-Guides/*","home/ryan/Documents/services_test/*","/home/ryan/.mozilla/*","/home/github/*","/home/ryan/.atom/*","/home/ryan/.config/google-chrome/*","/home/ryan/.local/share/Trash/*","/usr/share/atom/*","/var/cache/*","/home/ryan/Downloads/*","/home/ryan/Templates/re-flamel/*"} /mnt/backup"
alias cp="cp -r"
alias rm="rm -rf"
alias i3-config="vim ~/.config/i3/config"
alias charm="/home/ryan/.local/share/JetBrains/Toolbox/apps/PyCharm-C/ch-0/201.7846.77/bin/pycharm.sh &"

# todo.txt aliases
alias todo='todo.sh'
alias todo-add="todo add"
export TODOTXT_DEFAULT_ACTION=add
alias todone="todo do"
alias todos="todo ls"
alias topri="todo pri"
alias tofor="todo view project"
#alias donow="todo donow"
alias todue="todo setdue"
alias towhen="todo view date"

# thefuck aliases
eval "$(thefuck --alias)"

# use for managing dotfiles bare git repo
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME"
alias rhxtmdev="python3 -m docbooktoxtm"
