#!/bin/bash
# --------------------------- Settings ----------------------------
SSHD_CONF=/etc/ssh/sshd_config


# --------------------------- Functions ----------------------------
function install() {
	echo ""
	echo "Install:"
	echo " r  git-core"
	echo "    gitolite"
	if ask ">>>>>>>>>>>>>>>>>>>>> Install it?";
	then
	    apt-get install git-core gitolite
	fi
}

function config() {
	local user_name="git";
	local ssh_pub_key="/tmp/git-admin.pub";

	if check_file_exits ${ssh_pub_key};
	then
		echo "ERROR - file not found: ${ssh_pub_key}"
        exit 1
	fi

	echo ""
	echo "Config:"
	echo "    create user ${user_name}"
	echo "    modify ${SSHD_CONF}"
	if ask ">>>>>>>>>>>>>>>>>>>>> Config it?";
	then
		# create user named "git"
		adduser --system --group --shell /bin/bash --disabled-password ${user_name}
		# Set the user as a allowed ssh user
		echo "" >> ${SSHD_CONF}
		echo "AllowUsers ${user_name}" >> ${SSHD_CONF}
		# Restart ssh service
		service ssh restart
		#
		su - ${user_name}
		gl-setup ${ssh_pub_key}
	fi
}