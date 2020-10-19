function cproj
	if test -d ~/PycharmProjects/$argv
		cd ~/PycharmProjects/$argv
	else if test -d ~/WebstormProjects/$argv
		cd ~/WebstormProjects/$argv
	end		
end

