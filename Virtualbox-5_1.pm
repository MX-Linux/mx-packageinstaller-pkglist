<?xml version="1.0"?>
<app>


<category>
Misc
</category>

<name>  
VirtualBox 5.1 (Oracle)
</name>

<description>  
Virtualbox 5.1 from Oracle.
</description>

<installable>
all
</installable>

<screenshot>https://screenshots.debian.net/screenshots/000/015/010/large.png</screenshot>

<preinstall>
sed -i -r '/download.virtualbox.org/ s/^#+//' /etc/apt/sources.list.d/various.list
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
apt-get update
</preinstall>

<install_package_names>
virtualbox-5.1
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/install_vb_extensions.sh
</postinstall>


<uninstall_package_names>
virtualbox-5.1
</uninstall_package_names>

</app>
