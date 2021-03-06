#!/bin/bash
# --------------------------- Settings ----------------------------
VSFTPD_CONF=/etc/vsftpd
PAM_VSFTPD_CONF=/etc/pam.d/vsftpd


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo "    vsftpd"
	echo "    libpam-pwdfile (virtual users)"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then	
		apt-get install vsftpd libpam-pwdfile
	fi
}

function config() {
	local username=user1

	echo ""
	echo "Config"
	echo "    modify ${VSFTPD_CONF}"
	echo "    modify /etc/pam.d/vsftpd"
	echo "    create virutal user ${username}"
	echo "    create var/www/${username}/www/"
	if ask ">>>>>>>>>>>>>>>>>>>>> Config it?";
	then
		# Configure vsftpd
		echo "Backup config file: ${VSFTPD_CONF}.original"
		mv ${VSFTPD_CONF} ${VSFTPD_CONF}.original
		cp config_files/vsftpd.conf ${VSFTPD_CONF}
		# Register virtual users
		mkdir /etc/vsftpd
		htpasswd -cd /etc/vsftpd/ftpd.passwd ${username}
		# Configure PAM
		echo "Backup config file: ${PAM_VSFTPD_CONF}.original"
		mv ${PAM_VSFTPD_CONF} ${PAM_VSFTPD_CONF}.config
		cp config_files/vsftpd ${PAM_VSFTPD_CONF}
		# Create local use
		useradd --home /home/vsftpd --gid nogroup -m --shell /bin/false vsftpd
		/etc/init.d/vsftpd restart
		# Create directories
		mkdir /var/www/${username}
		chmod -w /var/www/${username}
		mkdir /var/www/${username}/www
		chmod -R 755 /var/www/${username}/www
		chown -R vsftpd:nogroup /var/www/${username}
	fi	
}