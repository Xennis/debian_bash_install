#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "     git"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		apt-get install git
	fi
}

function config() {
	echo ""
}