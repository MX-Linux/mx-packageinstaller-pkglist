<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>
Opera
</name>

<description>
   <am>Opera browser</am>
   <ca>Navegador Opera</ca>
   <cs>Opera browser</cs>
   <da>Opera browser</da>
   <de>Opera-Browser</de>
   <el>Πρόγραμμα περιήγησης Opera</el>
   <en>Opera browser</en>
   <es>Opera browser</es>
   <fi>Opera browser</fi>
   <fr>Navigateur Opera</fr>
   <hi>Opera browser</hi>
   <hr>Opera browser</hr>
   <hu>Opera browser</hu>
   <is>Opera browser</is>
   <it>Opera browser</it>
   <ja>Opera browser</ja>
   <kk>Opera browser</kk>
   <lt>Opera naršyklė</lt>
   <nl>Opera browser</nl>
   <pl>Opera browser</pl>
   <pt_BR>Opera browser</pt_BR>
   <pt>Navegador web Opera</pt>
   <ro>Opera browser</ro>
   <ru>Браузер Opera</ru>
   <sk>Opera browser</sk>
   <sq>Opera browser</sq>
   <sv>Opera webbläsare</sv>
   <tr>Opera browser</tr>
   <uk>Opera browser</uk>
   <zh_TW>Opera browser</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>http://www-static.operacdn.com/static-heap/e3/e3be37900045a27590062000a1e380e005644b8a/linux.png</screenshot>

<preinstall>
sed -i -r '/opera.com/ s/^#+//' /etc/apt/sources.list.d/various.list
wget -O - http://deb.opera.com/archive.key | apt-key add -
apt-get update
</preinstall>

<install_package_names>
opera-stable
</install_package_names>


<postinstall>
if [ -f /etc/apt/sources.list.d/opera-stable.list ]; then sed -i -r '/opera.com/ s/^([^#])/#\1/' /etc/apt/sources.list.d/various.list; apt-get update; fi
</postinstall>


<uninstall_package_names>
opera-stable
</uninstall_package_names>
</app>
