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
		apt-get install nodejs nodejs-legacy npm ant
		npm install -g phonegap
		npm install -g cordova
		npm install -g phonegap-build-api
	fi
}

function config() {
	echo ""
}