#!/bin/bash
# --------------------------- Functions ----------------------------
function install_git() {
	echo ""
	echo "Install:"
	echo "          git"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		sudo apt-get install git
	fi
}