#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "    nodejs (Node.js)"
	echo "    nodejs-legacy (https://github.com/joyent/node/issues/3911)"
	echo "    npm (package manager for Node.js)"
	echo "	  ant"
	echo "    phonegap"
	echo "    cordova"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		sudo apt-get install nodejs nodejs-legacy npm ant
		sudo npm install -g phonegap
		sudo npm install -g cordova
	fi
}

function config() {
	echo ""
}