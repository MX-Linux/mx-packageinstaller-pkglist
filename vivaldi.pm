<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>
Vivaldi
</name>

<description>
   <am>Vivaldi web browser</am>
   <ca>Navegador web Vivaldi</ca>
   <cs>Vivaldi web browser</cs>
   <da>Vivaldi web browser</da>
   <de>Der Vivaldi Web-Browser</de>
   <el>Vivaldi web browser</el>
   <en>Vivaldi web browser</en>
   <es>Vivaldi web browser</es>
   <fi>Vivaldi web browser</fi>
   <fr>Navigateur Web Vivaldi</fr>
   <hi>Vivaldi web browser</hi>
   <hr>Vivaldi web browser</hr>
   <hu>Vivaldi web browser</hu>
   <is>Vivaldi web browser</is>
   <it>Vivaldi web browser</it>
   <ja>Vivaldi web browser</ja>
   <kk>Vivaldi web browser</kk>
   <lt>Vivaldi saityno naršyklė</lt>
   <nl>Vivaldi web browser</nl>
   <pl>Vivaldi web browser</pl>
   <pt_BR>Navegador web Vivaldi</pt_BR>
   <pt>Navegador web Vivaldi</pt>
   <ro>Vivaldi web browser</ro>
   <ru>Браузер Vivaldi</ru>
   <sk>Vivaldi web browser</sk>
   <sq>Vivaldi web browser</sq>
   <sv>Vivaldi webbläsare</sv>
   <tr>Vivaldi web browser</tr>
   <uk>Vivaldi web browser</uk>
   <zh_TW>Vivaldi web browser</zh_TW>
</description>

<installable>
all
</installable>

<screenshot></screenshot>

<preinstall>
echo "deb http://repo.vivaldi.com/stable/deb/ stable main">/etc/apt/sources.list.d/mxpitemp.list
wget http://repo.vivaldi.com/stable/linux_signing_key.pub -O /tmp/vivaldi.key
apt-key add /tmp/vivaldi.key
rm /tmp/vivaldi.key
apt-get update
</preinstall>

<install_package_names>
vivaldi-stable
</install_package_names>


<postinstall>
rm /etc/apt/sources.list.d/mxpitemp.list
</postinstall>


<uninstall_package_names>
vivaldi-stable
</uninstall_package_names>
</app>
