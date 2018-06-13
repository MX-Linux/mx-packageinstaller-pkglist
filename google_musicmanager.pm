<?xml version="1.0"?>
<app>

<category>
Audio
</category>

<name>
Google Music Manager
</name>

<description>  
Google Music Manager Beta, 64 bit
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb [arch=amd64] http://dl.google.com/linux/musicmanager/deb/ stable main">/etc/apt/sources.list.d/google-musicmanager.list
apt-get update
</preinstall>

<install_package_names>
google-musicmanager-beta
</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
google-musicmanager-beta
</uninstall_package_names>
</app>
