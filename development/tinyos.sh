#!/bin/bash
# --------------------------- Settings ----------------------------
SOURCES=/etc/apt/sources.list
PATH_FILE=~/.bashrc


# --------------------------- Functions ----------------------------
function install() {
	local tinyos_version=2.1.1

	echo ""
	echo "Install:"
	echo "    tinyos-${tinyos_version}"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then
		echo "" >> ${SOURCES}
		echo "#tinyOS" >> ${SOURCES}
		echo "deb http://tinyos.stanford.edu/tinyos/dists/ubuntu lucid main" >> ${SOURCES}
		echo "deb http://tinyos.stanford.edu/tinyos/dists/ubuntu maverick main" >> ${SOURCES}
		echo "deb http://tinyos.stanford.edu/tinyos/dists/ubuntu natty main" >> ${SOURCES}
		apt-get update
		apt-get install tinyos-${tinyos_version}
	fi
}

function config() {
	local tinyos_version=2.1.1

	echo ""
	echo "Config"
	echo "    modify ${PATH_FILE} (add TinyOS)"
	if ask ">>>>>>>>>>>>>>>>>>>>> Config it?";
	then
		echo "Backup config file: ${PATH_FILE}.original"
		sudo cp ${PATH_FILE} ${PATH_FILE}.original
		echo "" >> ${PATH_FILE}
		echo "# Add TinyOS" >> ${PATH_FILE}
		echo "source /opt/tinyos-${tinyos_version}/tinyos.sh" >> ${PATH_FILE}
		# Reload
		source ${PATH_FILE}
	fi
}