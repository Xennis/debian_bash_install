#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "    git"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		# Option 1: git
		apt-get install git
		# Option 2: git core only
		#apt-get install git-core
	fi
}

function config() {
	echo ""
	echo "Config"
	echo "    modify global settings"
	if ask ">>>>>>>>>>>>>>>>>>>>> Config it?";
	then
		#git config --global user.email "EMAIL"
		#git config --global user.name "USER"
		git config --global push.default matching
	fi
}