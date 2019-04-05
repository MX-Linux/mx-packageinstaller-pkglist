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
   <ar>Vivaldi web browser</ar>
   <bg>Vivaldi web browser</bg>
   <ca>Navegador web Vivaldi</ca>
   <cs>Vivaldi web browser</cs>
   <da>Vivaldi-webbrowser</da>
   <de>Der Vivaldi Web-Browser</de>
   <el>Vivaldi web browser</el>
   <en>Vivaldi web browser</en>
   <es>Navegador de internet Vivaldi</es>
   <et>Vivaldi web browser</et>
   <eu>Vivaldi web browser</eu>
   <fa>Vivaldi web browser</fa>
   <fi>Vivaldi-verkkoselain</fi>
   <fr>Navigateur Web Vivaldi</fr>
   <he_IL>Vivaldi web browser</he_IL>
   <hi>Vivaldi web browser</hi>
   <hr>Vivaldi web browser</hr>
   <hu>Vivaldi web browser</hu>
   <id>Vivaldi web browser</id>
   <is>Vivaldi web browser</is>
   <it>Vivaldi web browser</it>
   <ja_JP>Vivaldi web browser</ja_JP>
   <ja>Vivaldi web browser</ja>
   <kk>Vivaldi web browser</kk>
   <ko>Vivaldi web browser</ko>
   <lt>Vivaldi saityno naršyklė</lt>
   <mk>Vivaldi web browser</mk>
   <nb>Vivaldi web browser</nb>
   <nl>Vivaldi web browser</nl>
   <pl>przeglądarka Vivaldi</pl>
   <pt_BR>Navegador web Vivaldi</pt_BR>
   <pt>Navegador web Vivaldi</pt>
   <ro>Vivaldi web browser</ro>
   <ru>Браузер Vivaldi</ru>
   <sk>Vivaldi web browser</sk>
   <sl>Vivaldi web browser</sl>
   <sq>Vivaldi web browser</sq>
   <sr>Vivaldi web browser</sr>
   <sv>Vivaldi webbläsare</sv>
   <tr>Vivaldi web browser</tr>
   <uk>Vivaldi web browser</uk>
   <zh_CN>Vivaldi web browser</zh_CN>
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
