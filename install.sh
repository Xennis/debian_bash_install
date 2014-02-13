#!/bin/bash
BASEDIR=`dirname $0`

#sudo apt-get install gcc make vim

# --------------------------- Settings ----------------------------


# --------------------------- Include gernal scripts ------------------------
source general_functions.sh


# --------------------------- Menu ----------------------------
echo ""
echo "debian_bash_install"
echo "    NOTE: run script as root/sudo"
echo " "
PS3='Please enter your choice: '
SOFTWARE=*/*.sh
select software in ${SOFTWARE[@]}
do
	if check_file_exits "${software}";
	then
	    source ${software}
	    install
	    config
	else
       	exit 1
	fi
done