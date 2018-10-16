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
   <ca>Mapamundi de Google Earth</ca>
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
   <nl>Google Earth Wereldbol</nl>
   <pl>Google Earth Globe</pl>
   <pt_BR>Google Earth Globe</pt_BR>
   <pt>Ver a Terra a partir do espaço</pt>
   <ro>Google Earth Globe</ro>
   <ru>Google Earth Globe</ru>
   <sk>Google Earth Globe</sk>
   <sv>Google Earth Glob</sv>
   <tr>Google Earth Globe</tr>
   <uk>Google Earth Globe</uk>
   <zh_TW>Google Earth Globe</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>
wget http://dl.google.com/dl/earth/client/current/google-earth-stable_current_i386.deb
dpkg -i google-earth-stable*.deb
apt-get -f install
apt-get install pulseaudio pulseaudio-module-x11 gstreamer0.10-pulseaudio rtkit pavucontrol
rm google-earth-stable*.deb
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
google-earth-stable
</uninstall_package_names>
</app>
