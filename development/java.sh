#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "          openjdk-7-jdk"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		# Install Java JDK (which includes JRE)
		apt-get install openjdk-7-jdk
		# Install Java JRE only
		#apt-get install openjdk-7-jre
	fi
}

function config() {
	echo ""
}