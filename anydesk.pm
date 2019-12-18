<?xml version="1.0"?>
<app>

<category>
Remote Access
</category>

<name>
AnyDesk
</name>

<description>
   <am>Userspace components of AppArmor</am>
   <ar>Userspace components of AppArmor</ar>
   <bg>Userspace components of AppArmor</bg>
   <ca>Components d'espai d'usuari d'AppArmor</ca>
   <cs>Userspace components of AppArmor</cs>
   <da>Userspace components of AppArmor</da>
   <de>Komponenten aus der Nutzergemeinde für AppArmor</de>
   <el>Userspace components of AppArmor</el>
   <en>Userspace components of AppArmor</en>
   <es>Componentes del espacio de usuario de AppArmor</es>
   <et>Userspace components of AppArmor</et>
   <eu>Userspace components of AppArmor</eu>
   <fa>Userspace components of AppArmor</fa>
   <fil_PH>Userspace components of AppArmor</fil_PH>
   <fi>Userspace components of AppArmor</fi>
   <fr>Userspace components of AppArmor</fr>
   <he_IL>Userspace components of AppArmor</he_IL>
   <hi>Userspace components of AppArmor</hi>
   <hr>Userspace components of AppArmor</hr>
   <hu>Userspace components of AppArmor</hu>
   <id>Userspace components of AppArmor</id>
   <is>Userspace components of AppArmor</is>
   <it>Componenti dello spazio-utente di AppArmor</it>
   <ja_JP>Userspace components of AppArmor</ja_JP>
   <ja>Userspace components of AppArmor</ja>
   <kk>Userspace components of AppArmor</kk>
   <ko>Userspace components of AppArmor</ko>
   <lt>Userspace components of AppArmor</lt>
   <mk>Userspace components of AppArmor</mk>
   <mr>Userspace components of AppArmor</mr>
   <nb>Userspace components of AppArmor</nb>
   <nl>Userspace components of AppArmor</nl>
   <pl>Userspace components of AppArmor</pl>
   <pt_BR>Userspace components of AppArmor</pt_BR>
   <pt>Componentes do AppArmor do nível de utilizador</pt>
   <ro>Userspace components of AppArmor</ro>
   <ru>Компоненты AppArmor пространства пользователя</ru>
   <sk>Userspace components of AppArmor</sk>
   <sl>Userspace komponente za AppArmor</sl>
   <sq>Userspace components of AppArmor</sq>
   <sr>Userspace components of AppArmor</sr>
   <sv>Användarkomponenter för AppArmor</sv>
   <tr>Userspace components of AppArmor</tr>
   <uk>Userspace components of AppArmor</uk>
   <zh_CN>Userspace components of AppArmor</zh_CN>
   <zh_TW>Userspace components of AppArmor</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>
rm /tmp/anydesk.deb 2>/dev/null
curl -RL  -o /tmp/anydesk.deb $(curl -s https://anydesk.com/en/downloads/linux \
| grep -m1 -Eo https://[^[:space:]]*$(dpkg --print-architecture).deb)
# fehlix: fix anydesk deb package
# apt-get install /tmp/anydesk.deb
dpkg --unpack /tmp/anydesk.deb
chmod 755 /var/lib/dpkg/info/anydesk.postinst 2>/dev/null
chmod 755 /var/lib/dpkg/info/anydesk.postrm   2>/dev/null
chmod 755 /var/lib/dpkg/info/anydesk.preinst  2>/dev/null
chmod 755 /var/lib/dpkg/info/anydesk.prerm    2>/dev/null
chmod -R 755 /usr/share/anydesk               2>/dev/null
dpkg --configure anydesk
apt-get install -f
rm /tmp/anydesk.deb 2>/dev/null
</preinstall>

<install_package_names>

</install_package_names>

<postinstall>

</postinstall>

<uninstall_package_names>
anydesk
</uninstall_package_names>
</app>
