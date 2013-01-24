echo BASH_PROFILE

#### BEGIN CUT ####
# Force a source of .bashrc on all systems unless already sourced
if [ ! $HOMEBASHRCSOURCED ]; then
	. ~/.bashrc
fi
#### END CUT ####

