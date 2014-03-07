#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "    brackets"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		add-apt-repository ppa:webupd8team/brackets
		apt-get update
		apt-get install brackets
	fi
}

function config() {
	echo ""
}