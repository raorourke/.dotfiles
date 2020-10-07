function quick-patch
	bumpversion patch --allow-dirty
	bumpversion release --allow-dirty
	set -l version ( poetry version | awk '{ print $2 }' )

	git add . && git commit -m "bumpversion to $version" && git push
	poetry publish --build
end

