<?xml version="1.0"?>
<app>


<category>
Misc
</category>

<name>
VirtualBox 32 bit
</name>

<description>
   <am>Virtualbox</am>
   <ar>Virtualbox</ar>
   <bg>Virtualbox</bg>
   <bn>Virtualbox</bn>
   <ca>Virtualbox</ca>
   <cs>Virtualbox</cs>
   <da>Virtualbox</da>
   <de>Die Virtualisierungssoftware VirtualBox</de>
   <el>Virtualbox</el>
   <en>Virtualbox</en>
   <es>Máquina virtual</es>
   <et>Virtualbox</et>
   <eu>Virtualbox</eu>
   <fa>Virtualbox</fa>
   <fil_PH>Virtualbox</fil_PH>
   <fi>Virtualbox</fi>
   <fr>Virtualbox</fr>
   <he_IL>Virtualbox</he_IL>
   <hi>Virtualbox</hi>
   <hr>Virtualbox</hr>
   <hu>Virtualbox</hu>
   <id>Virtualbox</id>
   <is>Virtualbox</is>
   <it>Virtualbox</it>
   <ja_JP>Virtualbox</ja_JP>
   <ja>Virtualbox</ja>
   <kk>Virtualbox</kk>
   <ko>Virtualbox</ko>
   <lt>Virtualbox</lt>
   <mk>Virtualbox</mk>
   <mr>Virtualbox</mr>
   <nb>Virtualbox</nb>
   <nl>Virtualbox</nl>
   <pl>menedżer maszyn wirtualnych</pl>
   <pt_BR>Virtualbox</pt_BR>
   <pt>Virtualbox</pt>
   <ro>Virtualbox</ro>
   <ru>Приложение виртуализации VirtualBox</ru>
   <sk>Virtualbox</sk>
   <sl>Virtualbox</sl>
   <sq>Virtualbox</sq>
   <sr>Virtualbox</sr>
   <sv>Virtualbox</sv>
   <tr>Virtualbox</tr>
   <uk>Virtualbox</uk>
   <vi>Virtualbox</vi>
   <zh_CN>Virtualbox</zh_CN>
   <zh_TW>Virtualbox</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>https://screenshots.debian.net/screenshots/000/015/010/large.png</screenshot>

<preinstall>
echo "deb  http://mxrepo.com/mx/experimental/ buster test \ " >> /etc/apt/sources.list.d/mxpitemp.list
apt-get update
</preinstall>

<install_package_names>
virtualbox
virtualbox-ext-pack
virtualbox-guest-additions-iso
</install_package_names>


<postinstall>
gpasswd -M $(getent group users | cut -d: -f4) vboxusers
rm /etc/apt/sources.list.d/mxpitemp.list
apt-get update
</postinstall>


<uninstall_package_names>
virtualbox
virtualbox-ext-pack
virtualbox-guest-additions-iso
</uninstall_package_names>

</app>
