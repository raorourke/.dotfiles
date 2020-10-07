function welo-ssh
	set -l vpn_status ( nmcli con | awk '/Welocalize/ { print $4 }' )
	if test $vpn_status = '--'
		nmcli con up id Welocalize 1>/dev/null 2>&1
	end
	sshpass -p $okta_password ssh ryan.orourke@10.100.1.89
end

