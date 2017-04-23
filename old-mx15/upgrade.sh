#!/bin/bash
	

#check if mx16 is already set up
check=$(lsb_release -rs |grep 16)
if [ -n "$check" ]; then
	echo "MX 16 appears to be already installed"
	read -p "Press ENTER to exit"
	exit 0
fi

#check for presence of mx16 repo already
if [ "$(grep /repo/ /etc/apt/sources.list.d/*.list|grep -m 1 mx16)" = "" ]; then

#if mx16 repo not present, add to temporary sources
	echo "Adding MX16 repository to /etc/apt/sources.list.d/mx16temp.list"
	echo "#MX16 repo">>/etc/apt/sources.list.d/mx16temp.list
	new_list=$(grep /repo/ /etc/apt/sources.list.d/mx.list|grep -m 1 mx15 |sed s/mx15/mx16/)
	echo $new_list " added to sources"
	echo $new_list>>/etc/apt/sources.list.d/mx16temp.list
else
	echo "mx16 repo already exists"
fi
echo ""
echo "Ready to Update Sources"
echo ""
read -p "Press ENTER to continue or ctrl+c to exit"
apt-get update
defaults_check=$(apt-cache policy desktop-defaults-xfce-mx16 |grep mx16/main|awk {'print $1'})
echo "defaults check = " $defaults_check

#check to make sure desktop-defaults-xfce-mx16 exists
if [ "$defaults_check" = "500" ]; then
	echo "replacement desktop-defaults-xfce package exists, safe to proceed"
	# remove mx-event-sounds and desktop-defaults-xfce-mx
	read -p "Replace desktop-defaults.  Press ENTER to continue or ctrl+c to exit"
	apt-get remove -y mx-event-sounds desktop-defaults-xfce-mx
	apt-get install -y desktop-defaults-xfce-mx16
	#install extra apps
	apt-get install apt-xapian-index papirus-gtk-icon-theme mx16-artwork mx16-artwork-extras icedtea-8-plugin lightdm-gtk-greeter-mx16 mx-apps
	#dist-upgrade to polish things off
	apt-get dist-upgrade
else
	echo "There is an error.  desktop-defaults-xfce-mx16 is not available."
	read -p "Press ENTER to exit"
	exit 0
fi

#cleanup temporary sources
rm -f /etc/apt/sources.list.d/mx16temp.list

#if you made it this far, update lsb-release info
echo 'PRETTY_NAME="MX-16 Metamorphosis (Migrated)"'>/etc/lsb-release
echo 'DISTRIB_ID=MX'>>/etc/lsb-release
echo 'DISTRIB_RELEASE=16-migrated'>>/etc/lsb-release
echo 'DISTRIB_CODENAME=Metamorphosis-migrated'>>/etc/lsb-release
echo 'DISTRIB_DESCRIPTION="MX-16 Metamorphosis (Migrated)"'>>/etc/lsb-release
echo  "MX-16 $(dpkg --print-architecture) Migrated">/etc/antix-version

read -p "Complete:  Press ENTER to exit"
exit 0

	
