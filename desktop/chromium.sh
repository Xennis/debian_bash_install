#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "    chromium-browser"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		apt-get install chromium-browser
	fi
}

function config() {
	echo ""
}