# .bash_functions

# User specific environment
PATH="$HOME/.local/bin/functions:$PATH"
export PATH

# User specific functions

# Red Hat Services functions

rhgit() { git clone "git@github.com:RedHatTraining/$1.git" "$GITHUB/RedHatTraining/$1"; }

ragit() { git clone "git@github.com:raorourke/$1.git" "$GITHUB/raorourke/$1"; }

do-over() {
	find . -mindepth 1 -maxdepth 1 ! -name *.sh -exec rm -rf "{}" +
	find .. -mindepth 1 -maxdepth 1 -type f -exec cp "{}" . \;
}

its_pat() { 
	results+=( $( curl -sG "https://gender-api.com/get?key=BcZxVToAbanAZMXrZA&name=$1" |
		jq -r '.name_sanitized, .gender, .accuracy' ) )
	echo "${results[0]} is ${results[1]} (${results[2]}%)"
	unset results
}
