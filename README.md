#Installation

```bash
make install
```

#Lancement

```bash
make
```

#Erreurs
Lorsque des erreurs sont rencontrées gulp d'arrête afin que vous puissiez garder le contrôle sur le flux et corriger les erreurs.


#Installation nodejs & npm

```bash
sudo make install-node-npm
```

ou


```bash
sudo apt-get install nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo apt-get install npm
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
```

#Installation bibliothèque

##Installation coloration syntaxique

```bash
make install-minted
```

ou

```bash
git clone https://github.com/gpoore/minted
mv minted lib
ln -s minted/source/minted.sty lib/minted.sty
```

