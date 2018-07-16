<?xml version="1.0"?>
<app>

<category>
Misc
</category>

<name>
Google Earth
</name>

<description>
   <am>Google Earth Globe</am>
   <ca>Google Earth Globe</ca>
   <cs>Google Earth Globe</cs>
   <de>Google Earth Globe</de>
   <el>Google Earth Globe</el>
   <en>Google Earth Globe</en>
   <es>Google Earth Globe</es>
   <fi>Google Earth Globe</fi>
   <fr>Google Earth Globe</fr>
   <hi>Google Earth Globe</hi>
   <hr>Google Earth Globe</hr>
   <hu>Google Earth Globe</hu>
   <it>Google Earth Globe</it>
   <ja>Google Earth Globe</ja>
   <kk>Google Earth Globe</kk>
   <lt>Google Earth Globe</lt>
   <nl>Google Earth Globe</nl>
   <pl>Google Earth Globe</pl>
   <pt_BR>Google Earth Globe</pt_BR>
   <pt>Google Earth Globe</pt>
   <ro>Google Earth Globe</ro>
   <ru>Google Earth Globe</ru>
   <sk>Google Earth Globe</sk>
   <sv>Google Earth Glob</sv>
   <tr>Google Earth Globe</tr>
   <uk>Google Earth Globe</uk>
   <zh_TW>Google Earth Globe</zh_TW>
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
