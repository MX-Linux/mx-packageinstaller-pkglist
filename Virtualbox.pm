<?xml version="1.0"?>
<app>


<category>
Misc
</category>

<name>
VirtualBox
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
   <fil_PH>Vivaldi web browser</fil_PH>
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
   <mr>Vivaldi web browser</mr>
   <nb>Vivaldi web browser</nb>
   <nl>Vivaldi web browser</nl>
   <pl>przeglądarka Vivaldi</pl>
   <pt_BR>Navegador web Vivaldi</pt_BR>
   <pt>Navegador web Vivaldi</pt>
   <ro>Vivaldi web browser</ro>
   <ru>Браузер Vivaldi</ru>
   <sk>Vivaldi web browser</sk>
   <sl>Vivaldi spletni brskalnik</sl>
   <sq>Vivaldi web browser</sq>
   <sr>Vivaldi web browser</sr>
   <sv>Vivaldi webbläsare</sv>
   <tr>Vivaldi internet tarayıcı</tr>
   <uk>Vivaldi web browser</uk>
   <zh_CN>Vivaldi web browser</zh_CN>
   <zh_TW>Vivaldi web browser</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>https://screenshots.debian.net/screenshots/000/015/010/large.png</screenshot>

<preinstall>

</preinstall>

<install_package_names>
virtualbox
virtualbox-ext-pack
virtualbox-guest-additions-iso
</install_package_names>


<postinstall>
gpasswd -M $(getent group users | cut -d: -f4) vboxusers
</postinstall>


<uninstall_package_names>
virtualbox
virtualbox-ext-pack
virtualbox-guest-additions-iso
</uninstall_package_names>

</app>
