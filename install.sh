#!/bin/sh

if [ -e rr ];
then
	printf "Copying files\n"
else
	printf "rr not found. Did you remember to download it?\n"
	printf "http://sourceforge.net/project/showfiles.php?group_id=112441\n"
	printf "Place it in the same directory as this script and re-run\n"
	exit 1
fi

if mkdir /usr/share/games/rRootage; then
	printf "Share files directory created\n"
else
	printf "This script must be run as root\n"
	exit 1
fi

if cp -pr rr_share/* /usr/share/games/rRootage; then
	printf "Share files copied\n"
else
	printf "This script must be run as root\n"
	exit 1
fi

if chown games. /usr/share/games/rRootage; then
	printf "/usr/share/games/rRootage chowned\n"
else
	printf "This script must be run as root\n"
	exit 1
fi

if chmod u=rwx,g=rx,o=rx /usr/share/games/rRootage; then
	printf "/usr/share/games/rRootage chmoded\n"
else
	printf "This script must be run as root\n"
	exit 1
fi

if cp -p rr /usr/bin; then
	printf "/usr/bin/rr copied\n"
else
	printf "This script must be run as root\n"
	exit 1
fi

if chown root. /usr/bin/rr; then
	printf "/usr/bin/rr chowned\n"
else
	printf "This script must be run as root\n"
	exit 1
fi

if chmod u=rwx,g=rx,o=rx /usr/bin/rr; then
	printf "/usr/bin/rr chmoded\n"
else
	printf "This script must be run as root\n"
	exit 1
fi

printf "Done. Run with rr\n"
