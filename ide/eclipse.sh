#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "    eclipse-platform"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then
		apt-get eclipse-platform	
		# eclipse-jdt Java Development Tools
		# eclipse-pde Plug-in Development Tools
		# eclipse-cdt C/C++ Development Tools
		# apt-get install eclipse
	fi
}

function config() {
	echo ""
}