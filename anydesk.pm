<?xml version="1.0"?>
<app>

<category>
Remote Access
</category>

<name>
AnyDesk
</name>

<description>
   <am>AnyDesk remote access</am>
   <ar>AnyDesk remote access</ar>
   <bg>AnyDesk remote access</bg>
   <ca>Accés remot AnyDesk</ca>
   <cs>AnyDesk remote access</cs>
   <da>AnyDesk fjernadgang</da>
   <de>Fernzugriff mit AnyDesk</de>
   <el>AnyDesk απομακρυσμένη πρόσβαση</el>
   <en>AnyDesk remote access</en>
   <es>AnyDesk remote access</es>
   <et>AnyDesk remote access</et>
   <eu>AnyDesk remote access</eu>
   <fa>AnyDesk remote access</fa>
   <fi>AnyDesk remote access</fi>
   <fr>AnyDesk accès à distance</fr>
   <he_IL>AnyDesk remote access</he_IL>
   <hi>AnyDesk remote access</hi>
   <hr>AnyDesk remote access</hr>
   <hu>AnyDesk remote access</hu>
   <id>AnyDesk remote access</id>
   <is>AnyDesk remote access</is>
   <it>AnyDesk accesso remoto</it>
   <ja_JP>AnyDesk remote access</ja_JP>
   <ja>AnyDesk remote access</ja>
   <kk>AnyDesk remote access</kk>
   <ko>AnyDesk remote access</ko>
   <lt>AnyDesk nuotolinė prieiga</lt>
   <mk>AnyDesk remote access</mk>
   <nb>AnyDesk remote access</nb>
   <nl>AnyDesk afstand toegang</nl>
   <pl>dostęp zdalny AnyDesk</pl>
   <pt_BR>AnyDesk remote access</pt_BR>
   <pt>AnyDesk remote access</pt>
   <ro>AnyDesk remote access</ro>
   <ru>Удаленный рабочий стол, передача файлов и видеосвязь</ru>
   <sk>AnyDesk remote access</sk>
   <sl>AnyDesk remote access</sl>
   <sq>AnyDesk remote access</sq>
   <sr>AnyDesk remote access</sr>
   <sv>AnyDesk fjärråtkomst</sv>
   <tr>AnyDesk remote access</tr>
   <uk>AnyDesk remote access</uk>
   <zh_CN>AnyDesk remote access</zh_CN>
   <zh_TW>AnyDesk remote access</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>
curl -RL $(curl -s https://anydesk.com/de/downloads/linux | grep -m1 -Eo https://[^[:space:]]*$(dpkg --print-architecture).deb) -o /tmp/anydesk.deb
apt-get install /tmp/anydesk.deb
rm /tmp/anydesk.deb
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
anydesk
</uninstall_package_names>
</app>
