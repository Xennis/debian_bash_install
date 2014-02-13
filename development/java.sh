#!/bin/bash
# --------------------------- Settings ----------------------------
#PATH_FILE=~/.bashrc


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
#	echo "Config"
#	echo "          modify ${PATH_FILE} (add Java to PATH)"
#	if ask ">>>>>>>>>>>>>>>>>>>>> Config it?";
#	then
#		echo "Backup config file: ${PATH_FILE}.original"
#		sudo cp ${PATH_FILE} ${PATH_FILE}.original
#		echo "" >> ${PATH_FILE}
#		echo "# Add Java to PATH" >> ${PATH_FILE}
#		echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-i386" >> ${PATH_FILE}
#		echo "export PATH=\"\${PATH}:\${JAVA_HOME}/bin" >> ${PATH_FILE}
#		# Reload
#		source ${PATH_FILE}
#	fi
}