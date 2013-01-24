echo BASHRC
# Set your umask.
umask 077       # -- private, only you have access to your files
# umask 022     # -- anyone can read and execute your files
# umask 027     # -- only members of your group can read/execute your files

# Set the prompt.
PS1="\u@\h [\w] % "

# Add your aliases here.
# alias s='ssh -X'
alias vi='vim'
alias grep='grep --color'

# Set your environment variables here.
export VISUAL=vim

# Uncomment the if statement below to enable bash completion.
if [ -f /etc/bash_completion ]; then
	source /etc/bash_completion
fi

if [ -f ~/.bash_prompt ]; then
	. ~/.bash_prompt
fi

echo "MSI CLUSTER: $MSICLUSTER"

#====================
# Load modules specific to clusters
# The MSICLUSTER variable is defined globally on MSI systems.
case $MSICLUSTER in
	"lab")
		# Customization for Lab Queue machines and Workstations in SDVL, LMVL, CGL, BSCL, BMSDL
		alias grep='grep --color'
		alias ls='ls --color'

		module load matlab
		case $HOSTNAME in 
			gpu*)
				module load cuda 
			;; 
			m2|cm2)
				# Macs
			;;
			*)
				alias open='gnome-open'
			;; 
		esac
	;;
	"calhoun")
		# Customization for Calhoun
		module load intel ompi/intel
		export MPI_PATH=$OPEN_MPI_PATH
	;;
	"itasca")
		# Itasca has a variety of MPI options. The Platform MPI (pmpi) is recommended. 
		module load intel pmpi/intel
		export MPI_MAX_REMSH=16
		export MPI_MAX_MPID_WAITING=64
		export MPI_BUNDLE_MPIDS=N
		export OMP_NUM_THREADS=1
	;;
	"cascade")
		# For GPGPU:  
		module load cuda 
	;;
	*)
		# Put additional .bashrc commands here for all other machines 
		# Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
		if [ -f ~/.dir_colors ]; then
			eval `dircolors -b ~/.dir_colors`
		elif [ -f /etc/DIR_COLORS ]; then
			eval `dircolors -b /etc/DIR_COLORS`
		else
			export LSCOLORS="Cxfxcxdxbxegedabagacad"
			export CLICOLOR=LSCOLORS
			alias grep='grep --color'
		fi
	;;
esac

# Finish with common commands for ALL systems
alias vi=vim
export EDITOR=vi
