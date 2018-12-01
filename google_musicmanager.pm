<?xml version="1.0"?>
<app>

<category>
Audio
</category>

<name>
Google Music Manager
</name>

<description>
   <am>Google Music Manager Beta, 64 bit</am>
   <ca>Gestor de Google Music Beta, 64 bit</ca>
   <cs>Google Music Manager Beta, 64 bit</cs>
   <da>Google Music Manager Beta, 64 bit</da>
   <de>Google Music Manager Beta, 64 bit</de>
   <el>Google Music Manager Beta, 64 bit</el>
   <en>Google Music Manager Beta, 64 bit</en>
   <es>Google Music Manager Beta, 64 bit</es>
   <fi>Google Music Manager Beta, 64 bit</fi>
   <fr>Google Music Manager Beta, 64 bit</fr>
   <hi>Google Music Manager Beta, 64 bit</hi>
   <hr>Google Music Manager Beta, 64 bit</hr>
   <hu>Google Music Manager Beta, 64 bit</hu>
   <is>Google Music Manager Beta, 64 bit</is>
   <it>Google Music Manager Beta, 64 bit</it>
   <ja>Google Music Manager Beta, 64 bit</ja>
   <kk>Google Music Manager Beta, 64 bit</kk>
   <lt>Google Music Manager Beta, 64 bit</lt>
   <nl>Google Muziek Beheer Beta, 64 bit</nl>
   <pl>Google Music Manager Beta, 64 bit</pl>
   <pt_BR>Google Music Manager Beta, 64 bit</pt_BR>
   <pt>Google Music Manager Beta, 64 bit</pt>
   <ro>Google Music Manager Beta, 64 bit</ro>
   <ru>Google управление музыкой, beta 64 bit</ru>
   <sk>Google Music Manager Beta, 64 bit</sk>
   <sq>Google Music Manager Beta, 64 bit</sq>
   <sv>Google Music Manager Beta, 64 bit</sv>
   <tr>Google Music Manager Beta, 64 bit</tr>
   <uk>Google Music Manager Beta, 64 bit</uk>
   <zh_TW>Google Music Manager Beta, 64 bit</zh_TW>
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
