#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "    texlive-full (TeX distribution)"
	echo "    texmaker"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		apt-get install texlive-full texmaker
	fi
}

function config() {
	echo ""
}