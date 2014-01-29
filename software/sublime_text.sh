#!/bin/bash
# --------------------------- Functions ----------------------------
function install_sublime_text() {
	echo ""
	echo "Install:"
	echo "          sublime-text-installer (sublime-text-3)"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		sudo add-apt-repository ppa:webupd8team/sublime-text-3
		sudo apt-get update
		# Install Sublime Text
		sudo apt-get install sublime-text-installer
	fi
}