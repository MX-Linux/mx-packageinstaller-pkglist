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
wget http://dl.google.com/linux/musicmanager/deb/pool/main/g/google-musicmanager-beta/google-musicmanager-beta_1.0.243.1116-r0_amd64.deb
dpkg -i google-musicmanager-beta_1.0.243.1116-r0_amd64.deb
rm -f google-musicmanager-beta_1.0.243.1116-r0_amd64.deb
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
google-musicmanager-beta
</uninstall_package_names>
</app>
