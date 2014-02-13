#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "          sublime-text-installer (sublime-text-3)"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		add-apt-repository ppa:webupd8team/sublime-text-3
		apt-get update
		apt-get install sublime-text-installer
	fi
}

function config() {
	echo ""
}