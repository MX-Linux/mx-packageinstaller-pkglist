<?xml version="1.0"?>
<app>


<category>
Misc
</category>

<name>  
VirtualBox 5.2 (Oracle)
</name>

<description>  
Virtualbox 5.2 from Oracle.
</description>

<installable>
all
</installable>

<screenshot>https://screenshots.debian.net/screenshots/000/015/010/large.png</screenshot>

<preinstall>
sed -i -r '/download.virtualbox.org/ s/^#+//' /etc/apt/sources.list.d/various.list
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
x-terminal-emulator -e apt-get update
</preinstall>

<install_package_names>
virtualbox-5.2
</install_package_names>


<postinstall>
x-terminal-emulator -e /usr/share/mx-packageinstaller-pkglist/install_vb_extensions.sh
</postinstall>


<uninstall_package_names>
virtualbox-5.2
</uninstall_package_names>

</app>
