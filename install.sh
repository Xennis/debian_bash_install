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
options=("sublime_text" "git" "django" "vsftpd" "lamp" "exit")
select opt in "${options[@]}"
do
    case $opt in
        "sublime_text")
    	   source software/sublime_text.sh
            install_sublime_text
            ;;
        "git")
            source software/git.sh
            install_git
            ;;
        "django")
            source software/django.sh
            install_django
            ;;
        "vsftpd")
            source software/vsftpd.sh
            install_vsftpd
            config_vsftpd
            ;;
        "lamp")
            source software/lamp.sh
            install_lamp
            config_lamp
            ;;
        "exit")
            break
            ;;
        *) echo invalid option;;
    esac
done