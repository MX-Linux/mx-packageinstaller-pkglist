<?xml version="1.0"?>
<app>

<category>
Office
</category>

<name>  
Adobe Reader
</name>

<description>  
Adobe Reader PDF viewer
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>
gpg --keyserver keyserver.ubuntu.com --recv-keys 5C808C2B65558117
gpg --armor --export 5C808C2B65558117 | apt-key add -  
echo "deb http://www.deb-multimedia.org/ jessie main non-free">/etc/apt/sources.list.d/debmulti.list
x-terminal-emulator -e apt-get update
</preinstall>

<install_package_names>
acroread
acroread-plugins
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/debmulti.list
x-terminal-emulator -e apt-get update
</postinstall>


<uninstall_package_names>
acroread
acroread-plugins
</uninstall_package_names>
</app>