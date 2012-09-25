RYSNC_CMD=rsync -Crlptgo -v --exclude='*.swp' \
		  --exclude='.DS_Store' --exclude='*.pyc' \
		  --exclude='en.utf-8.add.spl'

install:
	$(RYSNC_CMD) dotvim/ $(HOME)/.vim/
	$(RYSNC_CMD) gvimrc $(HOME)/.gvimrc
	$(RYSNC_CMD) vimrc $(HOME)/.vimrc
	$(RYSNC_CMD) screenrc $(HOME)/.screenrc

rinstall:
	$(RYSNC_CMD) $(HOME)/.vim/ dotvim/
	$(RYSNC_CMD) $(HOME)/.gvimrc gvimrc
	$(RYSNC_CMD) $(HOME)/.vimrc vimrc
	$(RYSNC_CMD) ${HOME}/.screenrc screenrc

.PHONY: install rinstall

