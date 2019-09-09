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
   <ar>Opera browser</ar>
   <bg>Opera browser</bg>
   <ca>Navegador Opera</ca>
   <cs>Opera browser</cs>
   <da>Opera-browser</da>
   <de>Opera-Browser</de>
   <el>Πρόγραμμα περιήγησης Opera</el>
   <en>Opera browser</en>
   <es>Navegador Opera</es>
   <et>Opera browser</et>
   <eu>Opera browser</eu>
   <fa>Opera browser</fa>
   <fi>Opera-nettiselain</fi>
   <fr>Navigateur Opera</fr>
   <he_IL>Opera browser</he_IL>
   <hi>Opera browser</hi>
   <hr>Opera browser</hr>
   <hu>Opera browser</hu>
   <id>Opera browser</id>
   <is>Opera browser</is>
   <it>Opera browser</it>
   <ja_JP>Opera browser</ja_JP>
   <ja>Opera browser</ja>
   <kk>Opera browser</kk>
   <ko>Opera browser</ko>
   <lt>Opera naršyklė</lt>
   <mk>Opera browser</mk>
   <nb>Opera browser</nb>
   <nl>Opera browser</nl>
   <pl>przeglądarka Opera</pl>
   <pt_BR>Navegador web Opera</pt_BR>
   <pt>Navegador web Opera</pt>
   <ro>Opera browser</ro>
   <ru>Браузер Opera</ru>
   <sk>Opera browser</sk>
   <sl>Opera browser</sl>
   <sq>Opera browser</sq>
   <sr>Opera browser</sr>
   <sv>Opera webbläsare</sv>
   <tr>Opera browser</tr>
   <uk>Браузер Opera</uk>
   <zh_CN>Opera browser</zh_CN>
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
