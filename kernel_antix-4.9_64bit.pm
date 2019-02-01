<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
antiX 4.9 64 bit
</name>

<description>
   <am>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</am>
   <ar>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</ar>
   <bg>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</bg>
   <ca>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</ca>
   <cs>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</cs>
   <da>antiX 4.9.146 kerne meltdown- og spectre-rettelse, 64 bit</da>
   <de>antiX 4.9.146 Kernel - Meltdown und Spectre gepatcht, 64 bit</de>
   <el>antiX 4.9.146 πυρήνα Meltdown και Spectre patched, 64 bit</el>
   <en>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</en>
   <es>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</es>
   <et>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</et>
   <eu>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</eu>
   <fa>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</fa>
   <fi>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</fi>
   <fr>Noyau antiX 4.9.146 patché pour Meltdown et Spectre, 64 bit</fr>
   <he_IL>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</he_IL>
   <hi>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</hi>
   <hr>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</hr>
   <hu>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</hu>
   <id>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</id>
   <is>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</is>
   <it>Kernel antiX 4.9.146, con patch per Meltdown e Spectre, 64 bit</it>
   <ja_JP>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</ja_JP>
   <ja>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</ja>
   <kk>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</kk>
   <ko>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</ko>
   <lt>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</lt>
   <mk>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</mk>
   <nb>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</nb>
   <nl>antiX 4.9.146 kernel Meltdown en Spectre patched, 64 bit</nl>
   <pl>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</pl>
   <pt_BR>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</pt_BR>
   <pt>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</pt>
   <ro>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</ro>
   <ru>antiX ядро 4.9.146 с патчами Meltdown и Spectre, 64 bit</ru>
   <sk>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</sk>
   <sl>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</sl>
   <sq>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</sq>
   <sr>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</sr>
   <sv>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</sv>
   <tr>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</tr>
   <uk>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</uk>
   <zh_CN>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</zh_CN>
   <zh_TW>antiX 4.9.146 kernel Meltdown and Spectre patched, 64 bit</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.9.146-antix.1-amd64-smp
linux-headers-4.9.146-antix.1-amd64-smp
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.9.146-antix.1-amd64-smp
</postinstall>


<uninstall_package_names>
linux-image-4.9.146-antix.1-amd64-smp
linux-headers-4.9.146-antix.1-amd64-smp
</uninstall_package_names>
</app>
