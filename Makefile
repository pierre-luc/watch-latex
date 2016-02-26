DST=pdf
SRC=src

all:
	gulp

build:
	make -C $(SRC)

install-all: install-node-npm install install-minded

install:
	mkdir -p $(DST)
	npm install

install-node-npm:
	sudo apt-get install nodejs
	sudo ln -s /usr/bin/nodejs /usr/bin/node
	sudo apt-get install npm
	sudo npm cache clean -f
	sudo npm install -g n
	sudo n stable

install-minted:
	git clone https://github.com/gpoore/minted
	rm -rf minted/.git
	mv minted lib
	ln -s minted/source/minted.sty lib/minted.sty
	echo "_minted-*" >> .gitignore
	echo "lib/minted*" >> .gitignore

uninstall-all: uninstall-minted

uninstall-minted:
	rm -rf lib/minted*
	rm -rf $(SRC)/_minted-*


clean:
	make -C $(SRC) clean
