#!/bin/bash
# --------------------------- Settings ----------------------------
ANDROID_SKD_INSTALL_DIR=~/Downloads
PATH_FILE=~/.bashrc

# --------------------------- Functions ----------------------------
function install() {
	local android_sdk_tar="android-sdk_r22.3-linux.tgz"

	echo ""
	echo "Download:"
	echo "    ${android_sdk_tar}"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
#		sudo apt-get install openjdk-7-jdk

		# Download and unzip tar, delete tar
		if ! check_dir_exits ${ANDROID_SKD_INSTALL_DIR};
		then
			mkdir ${ANDROID_SKD_INSTALL_DIR}
		fi
		cd ${ANDROID_SKD_INSTALL_DIR}
		wget http://dl.google.com/android/${android_sdk_tar}
		tar -xvzf ${android_sdk_tar}
		rm ${android_sdk_tar}
	fi
}

function config() {
	echo ""
	echo "Config"
	echo "          modify ${PATH_FILE} (add SDK to PATH)"
	if ask ">>>>>>>>>>>>>>>>>>>>> Config it?";
	then
		echo "Backup config file: ${PATH_FILE}.original"
		sudo cp ${PATH_FILE} ${PATH_FILE}.original
		echo "" >> ${PATH_FILE}
		echo "export PATH=${PATH}:${ANDROID_SKD_INSTALL_DIR}/android-sdk-linux/tools:${ANDROID_SKD_INSTALL_DIR}/android-sdk-linux/platform-tools" >> ${PATH_FILE}
	fi
}