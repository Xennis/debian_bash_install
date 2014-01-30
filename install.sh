#!/bin/bash
BASEDIR=`dirname $0`

#sudo apt-get install gcc make

# --------------------------- Settings ----------------------------


# --------------------------- Include gernal scripts ------------------------
source functions/general_functions.sh


# --------------------------- Functions ----------------------------


# --------------------------- Menu ----------------------------
echo " "
PS3='Please enter your choice: '
SOFTWARE=software/*.sh
select software in ${SOFTWARE[@]}
do
    source ${software}
    install
    config
done