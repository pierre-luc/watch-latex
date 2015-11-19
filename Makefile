DST=pdf
SRC=src

all:
	gulp

build:
	make -C $(SRC)

install:
	@mkdir $(DST)
	npm install

install-node-npm:
	sudo apt-get install nodejs
	sudo ln -s /usr/bin/nodejs /usr/bin/node
	sudo apt-get install npm
	sudo npm cache clean -f
	sudo npm install -g n
	sudo n stable
