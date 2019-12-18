<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
antiX 5.2 64 bit
</name>

<description>
   <am>antiX 5.2.15 kernel pae 32 bit</am>
   <ar>antiX 5.2.15 kernel pae 32 bit</ar>
   <bg>antiX 5.2.15 kernel pae 32 bit</bg>
   <ca>Kernel antiX 5.2.15 PAE 32 bit</ca>
   <cs>antiX 5.2.15 kernel pae 32 bit</cs>
   <da>antiX 5.2.15 kernel pae 32 bit</da>
   <de>antiX 5.2.15 kernel pae 32 bit</de>
   <el>antiX 5.2.15 kernel pae 32 bit</el>
   <en>antiX 5.2.15 kernel pae 32 bit</en>
   <es>antiX 5.2.15 kernel pae 32 bit</es>
   <et>antiX 5.2.15 kernel pae 32 bit</et>
   <eu>antiX 5.2.15 kernel pae 32 bit</eu>
   <fa>antiX 5.2.15 kernel pae 32 bit</fa>
   <fil_PH>antiX 5.2.15 kernel pae 32 bit</fil_PH>
   <fi>antiX 5.2.15 kernel pae 32 bit</fi>
   <fr>antiX 5.2.15 kernel pae 32 bit</fr>
   <he_IL>antiX 5.2.15 kernel pae 32 bit</he_IL>
   <hi>antiX 5.2.15 kernel pae 32 bit</hi>
   <hr>antiX 5.2.15 kernel pae 32 bit</hr>
   <hu>antiX 5.2.15 kernel pae 32 bit</hu>
   <id>antiX 5.2.15 kernel pae 32 bit</id>
   <is>antiX 5.2.15 kernel pae 32 bit</is>
   <it>antiX 5.2.15 kernel pae 32 bit</it>
   <ja_JP>antiX 5.2.15 kernel pae 32 bit</ja_JP>
   <ja>antiX 5.2.15 kernel pae 32 bit</ja>
   <kk>antiX 5.2.15 kernel pae 32 bit</kk>
   <ko>antiX 5.2.15 kernel pae 32 bit</ko>
   <lt>antiX 5.2.15 kernel pae 32 bit</lt>
   <mk>antiX 5.2.15 kernel pae 32 bit</mk>
   <mr>antiX 5.2.15 kernel pae 32 bit</mr>
   <nb>antiX 5.2.15 kernel pae 32 bit</nb>
   <nl>antiX 5.2.15 kernel pae 32 bit</nl>
   <pl>antiX 5.2.15 kernel pae 32 bit</pl>
   <pt_BR>antiX 5.2.15 kernel pae 32 bit</pt_BR>
   <pt>Núcleo (kernel) antiX 5.2.15 pae 32 bit</pt>
   <ro>antiX 5.2.15 kernel pae 32 bit</ro>
   <ru>antiX 5.2.15 ядро, 32 bit PAE</ru>
   <sk>antiX 5.2.15 kernel pae 32 bit</sk>
   <sl>antiX 5.2.15 jedro pae 32 bitno</sl>
   <sq>antiX 5.2.15 kernel pae 32 bit</sq>
   <sr>antiX 5.2.15 kernel pae 32 bit</sr>
   <sv>antiX 5.2.15 kärna pae 32 bit</sv>
   <tr>antiX 5.2.15 kernel pae 32 bit</tr>
   <uk>antiX 5.2.15 kernel pae 32 bit</uk>
   <zh_CN>antiX 5.2.15 kernel pae 32 bit</zh_CN>
   <zh_TW>antiX 5.2.15 kernel pae 32 bit</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-5.2.15-antix.1-amd64-smp
linux-headers-5.2.15-antix.1-amd64-smp
</install_package_names>


<postinstall>
rebuild_dkms_packages.sh linux-image-5.2.15-antix.1-amd64-smp
</postinstall>


<uninstall_package_names>
linux-image-5.2.15-antix.1-amd64-smp
linux-headers-5.2.15-antix.1-amd64-smp
</uninstall_package_names>
</app>
