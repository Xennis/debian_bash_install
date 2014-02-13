#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "          brackets"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		sudo add-apt-repository ppa:webupd8team/brackets
		sudo apt-get update
		sudo apt-get install brackets
	fi
}

function config() {
	echo ""
}