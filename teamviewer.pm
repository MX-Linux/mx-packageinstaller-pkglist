<?xml version="1.0"?>
<app>

<category>
Remote Access
</category>

<name>
TeamViewer
</name>

<description>
   <am>Teamviewer remote access</am>
   <ar>Teamviewer remote access</ar>
   <bg>Teamviewer remote access</bg>
   <ca>Accés remot Teamviewer</ca>
   <cs>Teamviewer remote access</cs>
   <da>Teamviewer fjernadgang</da>
   <de>Fernzugriff mit Teamviewer</de>
   <el>Teamviewer απομακρυσμένη πρόσβαση</el>
   <en>Teamviewer remote access</en>
   <es>Teamviewer remote access</es>
   <et>Teamviewer remote access</et>
   <eu>Teamviewer remote access</eu>
   <fa>Teamviewer remote access</fa>
   <fi>Teamviewer remote access</fi>
   <fr>Teamviewer accès à distance</fr>
   <he_IL>Teamviewer remote access</he_IL>
   <hi>Teamviewer remote access</hi>
   <hr>Teamviewer remote access</hr>
   <hu>Teamviewer remote access</hu>
   <id>Teamviewer remote access</id>
   <is>Teamviewer remote access</is>
   <it>Teamviewer accesso remoto</it>
   <ja_JP>Teamviewer remote access</ja_JP>
   <ja>Teamviewer remote access</ja>
   <kk>Teamviewer remote access</kk>
   <ko>Teamviewer remote access</ko>
   <lt>Teamviewer nuotolinė prieiga</lt>
   <mk>Teamviewer remote access</mk>
   <nb>Teamviewer remote access</nb>
   <nl>Teamviewer afstand toegang</nl>
   <pl>Teamviewer remote access</pl>
   <pt_BR>Teamviewer remote access</pt_BR>
   <pt>Teamviewer remote access</pt>
   <ro>Teamviewer remote access</ro>
   <ru>Удаленный рабочий стол, передача файлов и видеосвязь</ru>
   <sk>Teamviewer remote access</sk>
   <sl>Teamviewer remote access</sl>
   <sq>Teamviewer remote access</sq>
   <sr>Teamviewer remote access</sr>
   <sv>Teamviewer fjärråtkomst</sv>
   <tr>Teamviewer remote access</tr>
   <uk>Teamviewer remote access</uk>
   <zh_CN>Teamviewer remote access</zh_CN>
   <zh_TW>Teamviewer remote access</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>
wget http://download.teamviewer.com/download/teamviewer_i386.deb
dpkg -i teamviewer_i386.deb
apt-get -f install
rm teamviewer_i386.deb
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
teamviewer
</uninstall_package_names>
</app>
