#!/usr/bin/env fish

function remove-pypi-pkg --description "Removes current version of package from private pypi repo."
	set -l pkg ( poetry version | awk '{ gsub(/-/, "_") ; print $1 }' )
	set -l vers ( poetry version | awk '{ print $2 }' )
	curl 'http://welo:Localiz3@10.100.1.89:8081' \
		--form ":action=remove_pkg" \
		--form "name=$pkg" \
		--form "version=$vers"
end
