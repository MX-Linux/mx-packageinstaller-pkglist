<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>  
Vivaldi
</name>

<description>  
Vivaldi web browser
</description>

<installable>
all
</installable>

<screenshot></screenshot>

<preinstall>
echo "deb http://repo.vivaldi.com/stable/deb/ stable main">/etc/apt/sources.list.d/mxpitemp.list
wget http://repo.vivaldi.com/stable/linux_signing_key.pub -O /tmp/vivaldi.key
apt-key add /tmp/vivaldi.key
rm /tmp/vivaldi.key
apt-get update
</preinstall>

<install_package_names>
vivaldi-stable
</install_package_names>


<postinstall>
rm /etc/apt/sources.list.d/mxpitemp.list
</postinstall>


<uninstall_package_names>
vivaldi-stable
</uninstall_package_names>
</app>
