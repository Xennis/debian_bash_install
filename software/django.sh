#!/bin/bash
# --------------------------- Functions ----------------------------
function install_django() {
	local django_version=1.6.1

	echo ""
	echo "Install:"
	echo "    python"
	echo "    python-pip (for Django installation)"
	echo "    python-mysqldb (for MySQL)"
	echo "    Django ${django_version}"
	echo "Install if apache2 exits: "
    echo "    libapache2-mod-wsgi"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then
		sudo apt-get install python python-pip python-mysqldb
		if check_package_exits apache2;
		then
			sudo install libapache2-mod-wsgi
			sudo service apache2 restart
		fi
		#pip install MySQL-python
		# Install Django
		sudo pip install Django==${django_version}
	fi
}