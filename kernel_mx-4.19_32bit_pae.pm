<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
MX 4.19 PAE
</name>

<description>
   <am>MX 4.19 kernel, 32 bit PAE</am>
   <ar>MX 4.19 kernel, 32 bit PAE</ar>
   <bg>MX 4.19 kernel, 32 bit PAE</bg>
   <ca>MX 4.19 kernel, 32 bit PAE</ca>
   <cs>MX 4.19 kernel, 32 bit PAE</cs>
   <da>MX 4.19 kerne, 32 bit PAE</da>
   <de>MX 4.19 Kernel, 32 bit PAE</de>
   <el>Πυρήνας MX 4.19, 32 bit PAE</el>
   <en>MX 4.19 kernel, 32 bit PAE</en>
   <es>MX 4.19 kernel, 32 bit PAE</es>
   <et>MX 4.19 kernel, 32 bit PAE</et>
   <eu>MX 4.19 kernel, 32 bit PAE</eu>
   <fa>MX 4.19 kernel, 32 bit PAE</fa>
   <fi>MX 4.19 kernel, 32 bit PAE</fi>
   <fr>Noyau MX 4.19, 32 bit PAE</fr>
   <he_IL>MX 4.19 kernel, 32 bit PAE</he_IL>
   <hi>MX 4.19 kernel, 32 bit PAE</hi>
   <hr>MX 4.19 kernel, 32 bit PAE</hr>
   <hu>MX 4.19 kernel, 32 bit PAE</hu>
   <id>MX 4.19 kernel, 32 bit PAE</id>
   <is>MX 4.19 kernel, 32 bit PAE</is>
   <it>Kernel MX 4.19, 32 bit PAE</it>
   <ja_JP>MX 4.19 kernel, 32 bit PAE</ja_JP>
   <ja>MX 4.19 kernel, 32 bit PAE</ja>
   <kk>MX 4.19 kernel, 32 bit PAE</kk>
   <ko>MX 4.19 kernel, 32 bit PAE</ko>
   <lt>MX 4.19 kernel, 32 bit PAE</lt>
   <mk>MX 4.19 kernel, 32 bit PAE</mk>
   <nb>MX 4.19 kernel, 32 bit PAE</nb>
   <nl>MX 4.19 kernel, 32 bit PAE</nl>
   <pl>MX 4.19 kernel, 32 bit PAE</pl>
   <pt_BR>MX 4.19 kernel, 32 bit PAE</pt_BR>
   <pt>MX 4.19 kernel, 32 bit PAE</pt>
   <ro>MX 4.19 kernel, 32 bit PAE</ro>
   <ru>MX ядро 4.19, 32 bit pae</ru>
   <sk>MX 4.19 kernel, 32 bit PAE</sk>
   <sl>MX 4.19 kernel, 32 bit PAE</sl>
   <sq>MX 4.19 kernel, 32 bit PAE</sq>
   <sr>MX 4.19 kernel, 32 bit PAE</sr>
   <sv>MX 4.19 kernel, 32 bit PAE</sv>
   <tr>MX 4.19 kernel, 32 bit PAE</tr>
   <uk>MX 4.19 kernel, 32 bit PAE</uk>
   <zh_CN>MX 4.19 kernel, 32 bit PAE</zh_CN>
   <zh_TW>MX 4.19 kernel, 32 bit PAE</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.19.0-1-686-pae-unsigned
linux-headers-4.19.0-1-686-pae
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.19.0-1-686-pae-unsigned
</postinstall>


<uninstall_package_names>
linux-image-4.19.0-1-686-pae-unsigned
linux-headers-4.19.0-1-686-pae
</uninstall_package_names>
</app>
