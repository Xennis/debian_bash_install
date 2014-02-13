#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "    nodejs (Node.js)"
	echo "    npm (package manager for Node.js)"
	echo "    phonegap"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		sudo apt-get install nodejs npm
		sudo npm install -g phonegap
	fi
}

function config() {
	echo ""
}