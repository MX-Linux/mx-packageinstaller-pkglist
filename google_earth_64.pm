<?xml version="1.0"?>
<app>

<category>
Misc
</category>

<name>  
Google Earth
</name>

<description>  
Google Earth Globe 
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
googleearth-package
</install_package_names>


<postinstall>
make-googleearth-package --force
dpkg -i googleearth_6.0.3.2197+1.2.0-1_amd64.deb
apt-get install -f
rm googleearth*.deb
rm GoogleEarthLinux.bin
</postinstall>


<uninstall_package_names>
googleearth-package
googleearth
</uninstall_package_names>
</app>
