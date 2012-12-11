RYSNC_CMD=rsync -Crlptgo -v --exclude='*.swp' \
		  --exclude='.DS_Store' --exclude='*.pyc' \
		  --exclude='en.utf-8.add.spl'

install:
	$(RYSNC_CMD) screenrc $(HOME)/.screenrc
	$(RYSNC_CMD) gitconfig $(HOME)/.gitconfig
	$(RYSNC_CMD) gitignore_global $(HOME)/.gitignore_global
	$(RYSNC_CMD) bash_prompt $(HOME)/.bash_prompt
	$(RYSNC_CMD) dotvim/ $(HOME)/.vim/
	$(RYSNC_CMD) gvimrc $(HOME)/.gvimrc
	$(RYSNC_CMD) vimrc $(HOME)/.vimrc

rinstall:
	$(RYSNC_CMD) ${HOME}/.screenrc screenrc
	$(RYSNC_CMD) ${HOME}/.gitconfig gitconfig 
	$(RYSNC_CMD) ${HOME}/.gitignore_global gitignore_global
	$(RYSNC_CMD) ${HOME}/.bash_prompt bash_prompt 
	$(RYSNC_CMD) $(HOME)/.vim/ dotvim/
	$(RYSNC_CMD) $(HOME)/.gvimrc gvimrc
	$(RYSNC_CMD) $(HOME)/.vimrc vimrc

.PHONY: install rinstall

