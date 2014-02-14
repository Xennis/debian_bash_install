#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "    truecrypt"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		add-apt-repository ppa:michael-astrapi/ppasudo
		apt-get update
		apt-get install truecrypt
	fi
}

function config() {
	echo ""
}