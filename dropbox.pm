<?xml version="1.0"?>
<app>

<category>
Network
</category>

<name>  
Dropbox
</name>

<description>  
a GTK+ bluetooth management utility
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://linux.dropbox.com/debian/ jessie main">/etc/apt/sources.list.d/dropbox.list
apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
x-terminal-emulator -e apt-get update
</preinstall>

<install_package_names>
dropbox
python-gpgme
</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
dropbox
</uninstall_package_names>
</app>