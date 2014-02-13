#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "    nautilus-dropbox"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		apt-get install nautilus-dropbox
	fi
}

function config() {
	echo ""
}