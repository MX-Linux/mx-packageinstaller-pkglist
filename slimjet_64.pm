<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>  
Slimjet
</name>

<description>  
Latest Slimjet Browser (run again for updates)
</description>

<installable>
64
</installable>

<screenshot>https://www.slimjet.com/en/images/newtab.jpg</screenshot>

<preinstall>
wget http://www.slimjet.com/release/slimjet_amd64.deb
dpkg -i slimjet*.deb
apt-get -f install
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>
rm slimjet*.deb
</postinstall>


<uninstall_package_names>
slimjet
</uninstall_package_names>
</app>
