# 
# Function: ask
# Source: https://gist.github.com/davejamesmiller/1965569
#
function ask {
    while true; do
 
        if [ "${2:-}" = "Y" ]; then
            prompt="Y/n"
            default=Y
        elif [ "${2:-}" = "N" ]; then
            prompt="y/N"
            default=N
        else
            prompt="y/n"
            default=
        fi
 
        # Ask the question
        read -p "$1 [$prompt] " REPLY
 
        # Default?
        if [ -z "$REPLY" ]; then
            REPLY=$default
        fi
 
        # Check if the reply is valid
        case "$REPLY" in
            Y*|y*) return 0 ;;
            N*|n*) return 1 ;;
        esac
 
    done
}

#
# Uses dpkg to check if a package exits / is installed.
#
function check_package_exits() {
	if [ "$#" -lt 1 ]
	then
		echo "Usage check_package_exits PACKAGE-NAME"
		echo "Example: check_package_exits vim"
		echo ""
		exit 1
	else
		local package_name=$1
	fi
	
	if dpkg -l | grep -qw ${package_name};
	then
		return 0
	else
		return 1
	fi
}

#
# Check if directory exits
#
function check_dir_exits(){
    if [ "$#" -lt 1 ]
    then
        echo "Usage check_dir_exits DIR"
        echo "Example: check_dir_exits dir/"
        echo ""
        exit 1
    else
        local dir=$1
    fi
 
    if [ -d "${dir}" ]
    then
        return 0
    else
        return 1
    fi
}