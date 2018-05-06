<?xml version="1.0"?>
<app>

<category>
Remote Access
</category>

<name>
Nomachine
</name>

<description>  
Cross Platform Remote Access Software
</description>

<installable>
all
</installable>

<screenshot>https://www.nomachine.com/sites/all/themes/frontend/images/tutorial1/tutorial_1.jpg</screenshot>

<preinstall>
/usr/share/mx-packageinstaller-pkglist/download_nomachine.sh
apt install /tmp/nomachine.deb
rm /tmp/nomachine.deb
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
nomachine
</uninstall_package_names>
</app>
