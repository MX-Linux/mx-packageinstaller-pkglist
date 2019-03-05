<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
antiX 4.20 32 bit pae
</name>

<description>
   <am>antiX 4.20.12 kernel pae 32 bit</am>
   <ar>antiX 4.20.12 kernel pae 32 bit</ar>
   <bg>antiX 4.20.12 kernel pae 32 bit</bg>
   <ca>antiX 4.20.12 kernel pae 32 bit</ca>
   <cs>antiX 4.20.12 kernel pae 32 bit</cs>
   <da>antiX 4.20.12 kerne pae 32 bit</da>
   <de>antiX 4.20.12 Kernel pae 32 bit</de>
   <el>antiX 4.20.12 πυρήνα pae 32 bit</el>
   <en>antiX 4.20.12 kernel pae 32 bit</en>
   <es>antiX 4.20.12 kernel pae 32 bit</es>
   <et>antiX 4.20.12 kernel pae 32 bit</et>
   <eu>antiX 4.20.12 kernel pae 32 bit</eu>
   <fa>antiX 4.20.12 kernel pae 32 bit</fa>
   <fi>antiX 4.20.12 kernel pae 32 bit</fi>
   <fr>Noyau antiX 4.20.12 pae 32 bit</fr>
   <he_IL>antiX 4.20.12 kernel pae 32 bit</he_IL>
   <hi>antiX 4.20.12 kernel pae 32 bit</hi>
   <hr>antiX 4.20.12 kernel pae 32 bit</hr>
   <hu>antiX 4.20.12 kernel pae 32 bit</hu>
   <id>antiX 4.20.12 kernel pae 32 bit</id>
   <is>antiX 4.20.12 kernel pae 32 bit</is>
   <it>Kernel antiX 4.20.12, 32 bit pae</it>
   <ja_JP>antiX 4.20.12 kernel pae 32 bit</ja_JP>
   <ja>antiX 4.20.12 kernel pae 32 bit</ja>
   <kk>antiX 4.20.12 kernel pae 32 bit</kk>
   <ko>antiX 4.20.12 kernel pae 32 bit</ko>
   <lt>antiX 4.20.12 kernel pae 32 bit</lt>
   <mk>antiX 4.20.12 kernel pae 32 bit</mk>
   <nb>antiX 4.20.12 kernel pae 32 bit</nb>
   <nl>antiX 4.20.12 kernel pae 32 bit</nl>
   <pl>antiX 4.20.12 kernel pae 32 bit</pl>
   <pt_BR>antiX 4.20.12 kernel pae 32 bit</pt_BR>
   <pt>antiX 4.20.12 kernel pae 32 bit</pt>
   <ro>antiX 4.20.12 kernel pae 32 bit</ro>
   <ru>antiX ядро 4.20.12, 32 bit pae</ru>
   <sk>antiX 4.20.12 kernel pae 32 bit</sk>
   <sl>antiX 4.20.12 kernel pae 32 bit</sl>
   <sq>antiX 4.20.12 kernel pae 32 bit</sq>
   <sr>antiX 4.20.12 kernel pae 32 bit</sr>
   <sv>antiX 4.20.12 kernel pae 32 bit</sv>
   <tr>antiX 4.20.12 kernel pae 32 bit</tr>
   <uk>antiX 4.20.12 kernel pae 32 bit</uk>
   <zh_CN>antiX 4.20.12 kernel pae 32 bit</zh_CN>
   <zh_TW>antiX 4.20.12 kernel pae 32 bit</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.20.12-antix.1-686-smp-pae
linux-headers-4.20.12-antix.1-686-smp-pae
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.20.12-antix.1-686-smp-pae
</postinstall>


<uninstall_package_names>
linux-image-4.20.12-antix.1-686-smp-pae
linux-headers-4.20.12-antix.1-686-smp-pae
</uninstall_package_names>
</app>
