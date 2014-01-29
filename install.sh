#!/bin/bash
BASEDIR=`dirname $0`

#sudo apt-get install gcc make

# --------------------------- Settings ----------------------------


# --------------------------- Include gernal scripts ------------------------
source functions/general_functions.sh


# --------------------------- Functions ----------------------------
function software() {
    if [ "$#" -lt 1 ]
    then
        echo "Usage software SOFTWARE-NAME"
        echo "Example: software dropbox"
        echo ""
        exit 1
    else
        local software_name=$1
    fi
    
    source software/${software_name}.sh
    install ${software_name}
    config ${software_name}
}


# --------------------------- Menu ----------------------------
echo " "
PS3='Please enter your choice: '
options=("django" "dropbox" "git" "lamp" "java" "vsftpd" "sublime_text" "exit")
select opt in "${options[@]}"
do
    case $opt in
        "sublime_text")
            software sublime_text
            ;;
        "git")
            software git
            ;;
        "django")
            software django
            ;;
        "vsftpd")
            software vsftpd
            ;;
        "lamp")
            software lamp
            ;;
        "dropbox")
            software dropbox
            ;;
        "java")
            software java
            ;;
        "exit")
            break
            ;;
        *) echo invalid option;;
    esac
done