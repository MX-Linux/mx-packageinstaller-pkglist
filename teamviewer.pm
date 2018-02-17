<?xml version="1.0"?>
<app>

<category>
Remote Access
</category>

<name>  
TeamViewer
</name>

<description>  
Teamviewer remote access
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>
wget http://download.teamviewer.com/download/teamviewer_i386.deb
dpkg -i teamviewer_i386.deb
apt-get -f install
rm teamviewer_i386.deb
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
teamviewer
</uninstall_package_names>
</app>
