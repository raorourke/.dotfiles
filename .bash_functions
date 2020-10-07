# .bash_functions

# User specific environment
PATH="$HOME/.local/bin/functions:$PATH"
export PATH

# User specific functions
find-grep() {
	for file in $(find . -type f)
	do
	grep -is "$1" $file -A 10 -B 10
	echo $file
	done
}

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

repoet() {
	cd ~/PycharmProjects/$1 
	poetry build
	poetry install
	poetry shell
	cd ~/Sandbox
	rm -rf *
}

quick-patch() {
	bumpversion patch --allow-dirty
	bumpversion release --allow-dirty
	version=$(poetry version)
	git add . && git commit -m "bumpversion to ${version##*\ }" && git push
	poetry publish --build
}

welo-ssh() { 
	vpn_status="$( nmcli con | awk '/Welocalize/ { print $4 }')"
	if [ "$vpn_status" = '--' ]
	then
		nmcli con up id Welocalize >/dev/null 2>&1
	fi
	sshpass -p $okta_password ssh ryan.orourke@10.100.1.89
}

remove-pypi-pkg() {
	pkg=$( poetry version | awk '{ gsub(/-/, "_") ; print $1 }' )
	version=$( poetry version | awk '{ print $2 }' )
	curl 'http://welo:Localiz3@10.100.1.89:8081' \
		--form ":action=remove_pkg" \
		--form "name=$pkg" \
		--form "version=$version"
}
