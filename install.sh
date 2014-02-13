#!/bin/bash
BASEDIR=`dirname $0`

#sudo apt-get install gcc make vim

# --------------------------- Settings ----------------------------


# --------------------------- Include gernal scripts ------------------------
source general_functions.sh


# --------------------------- Functions ----------------------------


# --------------------------- Menu ----------------------------
echo " "
PS3='Please enter your choice: '
SOFTWARE=*/*.sh
select software in ${SOFTWARE[@]}
do
    source ${software}
    install
    config
done