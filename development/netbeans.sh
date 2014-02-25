#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "    netbeans"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then
		apt-get netbeans
	fi
}

function config() {
	echo ""
}