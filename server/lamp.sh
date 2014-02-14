#!/bin/bash
# --------------------------- Settings ----------------------------
APACHE_CONF=/etc/apache2/apache2.conf
PHPMYADMIN_CONF=/etc/phpmyadmin/apache.conf


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "    apache2"
	echo "    apache2-utils (used for e.g. htpasswd)"
	echo "    php5"
	echo "    php5-mysql (for MySQL)"
	echo "    mysql-server"
	echo "    mysql-client"
	echo "    phpmyadmin"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then
	    sudo apt-get install apache2 apache2-utils php5 php5-mysql mysql-server mysql-client phpmyadmin
	fi
}

function config() {
	echo ""
	echo "Config:"
	echo "    modify ${APACHE_CONF}"
	if ask ">>>>>>>>>>>>>>>>>>>>> Config it?";
		# Add phpmyadmin config location to apache config file
		echo " " >> ${APACHE_CONF}
		echo "# Added: phpMyAdmin" >> ${APACHE_CONF}
		echo "Include ${PHPMYADMIN_CONF}" >> ${APACHE_CONF}
	    sudo service apache2 restart

	    if ask ">>>>>>>>>>>>>>>>>>>>> Create phpinfo file?"; then
	        echo "<?php echo phpinfo(); ?>" > /var/www/info.php
	        echo "Create file: /var/www/info.php"
	    fi
}