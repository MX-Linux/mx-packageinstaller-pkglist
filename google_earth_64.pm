<?xml version="1.0"?>
<app>

<category>
Misc
</category>

<name>
Google Earth Pro
</name>

<description>
   <am>Google Earth Globe</am>
   <ca>Mapamundi de Google Earth</ca>
   <cs>Google Earth Globe</cs>
   <da>Google Earth Globe</da>
   <de>Google Earth Globe</de>
   <el>Google Earth Globe</el>
   <en>Google Earth Globe</en>
   <es>Google Earth Globe</es>
   <fi>Google Earth Globe</fi>
   <fr>Google Earth Globe</fr>
   <hi>Google Earth Globe</hi>
   <hr>Google Earth Globe</hr>
   <hu>Google Earth Globe</hu>
   <is>Google Earth Globe</is>
   <it>Google Earth Globe</it>
   <ja>Google Earth Globe</ja>
   <kk>Google Earth Globe</kk>
   <lt>Google Earth Globe</lt>
   <nl>Google Earth Wereldbol</nl>
   <pl>Google Earth Globe</pl>
   <pt_BR>Google Earth Globe</pt_BR>
   <pt>Ver a Terra a partir do espaço</pt>
   <ro>Google Earth Globe</ro>
   <ru>Google Планета Земля - спутниковые снимки земного шара</ru>
   <sk>Google Earth Globe</sk>
   <sq>Google Earth Globe</sq>
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
echo "deb [arch=amd64] http://dl.google.com/linux/earth/deb/ stable main">/etc/apt/sources.list.d/mxpitemp.list
apt-get update
</preinstall>

<install_package_names>
google-earth-pro-stable
</install_package_names>


<postinstall>
rm /etc/apt/sources.list.d/mxpitemp.list
</postinstall>


<uninstall_package_names>
google-earth-pro-stable
</uninstall_package_names>
</app>
