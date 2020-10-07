function pip-private -a pkg
	python3 -m pip install --user --index-url 'http://welo:Loclaliz3@10.100.1.89:8081' --trusted-host 10.100.1.89 $pkg
end

