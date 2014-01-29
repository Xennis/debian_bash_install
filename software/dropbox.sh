#!/bin/bash
# --------------------------- Functions ----------------------------
function install_dropbox() {
	echo ""
	echo "Install:"
	echo "          nautilus-dropbox"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		sudo apt-get install nautilus-dropbox
	fi
}