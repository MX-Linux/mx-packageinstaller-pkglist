<?xml version="1.0"?>
<app>

<category>
Network
</category>

<name>  
Megasync
</name>

<description>  
Client for MEGA file syncing service
</description>

<installable>
all
</installable>

<screenshot></screenshot>

<preinstall>
echo "deb https://mega.nz/linux/MEGAsync/Debian_9.0/ ./">/etc/apt/sources.list.d/mxpitemp.list
wget https://mega.nz/linux/MEGAsync/Debian_9.0/Release.key -o /tmp/megarelease.key
apt-key add /tmp/megarelease.key
rm /tmp/megarelease.key
apt-get update
</preinstall>

<install_package_names>
megasync
</install_package_names>


<postinstall>
rm /etc/apt/sources.list.d/mxpitemp.list
</postinstall>


<uninstall_package_names>
megasync
</uninstall_package_names>
</app>
