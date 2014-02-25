#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "    sqlite3"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		apt-get install sqlite3
	fi
}

function config() {
	echo ""
}