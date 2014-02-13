#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "          sublime-text-installer (sublime-text-3)"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		sudo add-apt-repository ppa:webupd8team/sublime-text-3
		sudo apt-get update
		sudo apt-get install sublime-text-installer
	fi
}

function config() {
	echo ""
}