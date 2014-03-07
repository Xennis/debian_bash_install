#!/bin/bash
# --------------------------- Settings ----------------------------


# --------------------------- Functions ----------------------------
function install() {
	local django_version=1.6.1

	echo ""
	echo "Install:"
	echo " r  python"
	echo " r  python-pip (for Django installation)"
	echo " o  python-mysqldb (for MySQL)"
	echo "    Django ${django_version}"
	echo "Install if apache2 exits: "
	echo " r  libapache2-mod-wsgi"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then
		apt-get install python python-pip python-mysqldb
		if check_package_exits apache2;
		then
			# Install mod_wsgi
			install libapache2-mod-wsgi
			service apache2 restart
		fi
		# Install Django
		pip install Django==${django_version}
		# pip install django-tastypie django-oauth2-provider
	fi
}

function config() {
	echo ""
}