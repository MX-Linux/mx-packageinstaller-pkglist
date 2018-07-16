<?xml version="1.0"?>
<app>


<category>
Misc
</category>

<name>
VirtualBox
</name>

<description>
   <am>Virtualbox</am>
   <ca>Virtualbox</ca>
   <cs>Virtualbox</cs>
   <de>Die Virtualisierungssoftware VirtualBox</de>
   <el>Virtualbox</el>
   <en>Virtualbox</en>
   <es>Virtualbox</es>
   <fi>Virtualbox</fi>
   <fr>Virtualbox</fr>
   <hi>Virtualbox</hi>
   <hr>Virtualbox</hr>
   <hu>Virtualbox</hu>
   <it>Virtualbox</it>
   <ja>Virtualbox</ja>
   <kk>Virtualbox</kk>
   <lt>Virtualbox</lt>
   <nl>Virtualbox</nl>
   <pl>Virtualbox</pl>
   <pt_BR>Virtualbox</pt_BR>
   <pt>Virtualbox</pt>
   <ro>Virtualbox</ro>
   <ru>Virtualbox</ru>
   <sk>Virtualbox</sk>
   <sv>Virtualbox</sv>
   <tr>Virtualbox</tr>
   <uk>Virtualbox</uk>
   <zh_TW>Virtualbox</zh_TW>
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
