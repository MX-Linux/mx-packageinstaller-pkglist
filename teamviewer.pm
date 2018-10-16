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
   <ca>Accés remot Teamviewer</ca>
   <cs>Teamviewer remote access</cs>
   <de>Fernzugriff mit Teamviewer</de>
   <el>Teamviewer remote access</el>
   <en>Teamviewer remote access</en>
   <es>Teamviewer remote access</es>
   <fi>Teamviewer remote access</fi>
   <fr>Teamviewer accès à distance</fr>
   <hi>Teamviewer remote access</hi>
   <hr>Teamviewer remote access</hr>
   <hu>Teamviewer remote access</hu>
   <it>Teamviewer accesso remoto</it>
   <ja>Teamviewer remote access</ja>
   <kk>Teamviewer remote access</kk>
   <lt>Teamviewer nuotolinė prieiga</lt>
   <nl>Teamviewer afstand toegang</nl>
   <pl>Teamviewer remote access</pl>
   <pt_BR>Teamviewer remote access</pt_BR>
   <pt>Teamviewer remote access</pt>
   <ro>Teamviewer remote access</ro>
   <ru>Teamviewer remote access</ru>
   <sk>Teamviewer remote access</sk>
   <sv>Teamviewer fjärråtkomst</sv>
   <tr>Teamviewer remote access</tr>
   <uk>Teamviewer remote access</uk>
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
