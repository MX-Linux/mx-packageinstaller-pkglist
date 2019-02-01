<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
MX 4.19 no-pae
</name>

<description>
   <am>MX 4.19 kernel, 32 bit no-pae</am>
   <ar>MX 4.19 kernel, 32 bit no-pae</ar>
   <bg>MX 4.19 kernel, 32 bit no-pae</bg>
   <ca>MX 4.19 kernel, 32 bit no-pae</ca>
   <cs>MX 4.19 kernel, 32 bit no-pae</cs>
   <da>MX 4.19 kerne, 32 bit uden pae</da>
   <de>MX 4.19 Kernel, 32 bit no-pae</de>
   <el>MX 4.19 πυρήνα, 32 bit no-pae</el>
   <en>MX 4.19 kernel, 32 bit no-pae</en>
   <es>MX 4.19 kernel, 32 bit no-pae</es>
   <et>MX 4.19 kernel, 32 bit no-pae</et>
   <eu>MX 4.19 kernel, 32 bit no-pae</eu>
   <fa>MX 4.19 kernel, 32 bit no-pae</fa>
   <fi>MX 4.19 kernel, 32 bit no-pae</fi>
   <fr>Noyau MX 4.19, 32 bit non-PAE</fr>
   <he_IL>MX 4.19 kernel, 32 bit no-pae</he_IL>
   <hi>MX 4.19 kernel, 32 bit no-pae</hi>
   <hr>MX 4.19 kernel, 32 bit no-pae</hr>
   <hu>MX 4.19 kernel, 32 bit no-pae</hu>
   <id>MX 4.19 kernel, 32 bit no-pae</id>
   <is>MX 4.19 kernel, 32 bit no-pae</is>
   <it>Kernel MX 4.19, 32 bit no-pae</it>
   <ja_JP>MX 4.19 kernel, 32 bit no-pae</ja_JP>
   <ja>MX 4.19 kernel, 32 bit no-pae</ja>
   <kk>MX 4.19 kernel, 32 bit no-pae</kk>
   <ko>MX 4.19 kernel, 32 bit no-pae</ko>
   <lt>MX 4.19 kernel, 32 bit no-pae</lt>
   <mk>MX 4.19 kernel, 32 bit no-pae</mk>
   <nb>MX 4.19 kernel, 32 bit no-pae</nb>
   <nl>MX 4.19 kernel, 32 bit no-pae</nl>
   <pl>MX 4.19 kernel, 32 bit no-pae</pl>
   <pt_BR>MX 4.19 kernel, 32 bit no-pae</pt_BR>
   <pt>MX 4.19 kernel, 32 bit no-pae</pt>
   <ro>MX 4.19 kernel, 32 bit no-pae</ro>
   <ru>MX ядро 4.19, 32 bit no-pae</ru>
   <sk>MX 4.19 kernel, 32 bit no-pae</sk>
   <sl>MX 4.19 kernel, 32 bit no-pae</sl>
   <sq>MX 4.19 kernel, 32 bit no-pae</sq>
   <sr>MX 4.19 kernel, 32 bit no-pae</sr>
   <sv>MX 4.19 kernel, 32 bit no-pae</sv>
   <tr>MX 4.19 kernel, 32 bit no-pae</tr>
   <uk>MX 4.19 kernel, 32 bit no-pae</uk>
   <zh_CN>MX 4.19 kernel, 32 bit no-pae</zh_CN>
   <zh_TW>MX 4.19 kernel, 32 bit no-pae</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.19.0-1-686-unsigned
linux-headers-4.19.0-1-686
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.19.0-1-686-unsigned
</postinstall>


<uninstall_package_names>
linux-image-4.19.0-1-686-unsigned
linux-headers-4.19.0-1-686
</uninstall_package_names>
</app>
