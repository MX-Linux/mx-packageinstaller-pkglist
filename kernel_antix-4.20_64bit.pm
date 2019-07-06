<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
antiX 5.1.2 64 bit
</name>

<description>
   <am>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</am>
   <ar>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</ar>
   <bg>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</bg>
   <ca>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</ca>
   <cs>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</cs>
   <da>antiX 5.1.2 kerne meltdown- og spectre-rettelse, 64 bit</da>
   <de>antiX 5.1.2 Kernel - Meltdown und Spectre gepatcht, 64 bit</de>
   <el>antiX 5.1.2 πυρήνα Meltdown και Spectre patched, 64 bit</el>
   <en>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</en>
   <es>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</es>
   <et>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</et>
   <eu>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</eu>
   <fa>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</fa>
   <fi>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</fi>
   <fr>Noyau antiX 5.1.2 patché pour Meltdown et Spectre, 64 bit</fr>
   <he_IL>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</he_IL>
   <hi>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</hi>
   <hr>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</hr>
   <hu>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</hu>
   <id>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</id>
   <is>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</is>
   <it>Kernel antiX 5.1.2, con patch per Meltdown e Spectre, 64 bit</it>
   <ja_JP>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</ja_JP>
   <ja>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</ja>
   <kk>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</kk>
   <ko>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</ko>
   <lt>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</lt>
   <mk>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</mk>
   <nb>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</nb>
   <nl>antiX 5.1.2 kernel Meltdown en Spectre patched, 64 bit</nl>
   <pl>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</pl>
   <pt_BR>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</pt_BR>
   <pt>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</pt>
   <ro>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</ro>
   <ru>antiX ядро 5.1.2 с патчами Meltdown и Spectre, 64 bit</ru>
   <sk>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</sk>
   <sl>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</sl>
   <sq>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</sq>
   <sr>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</sr>
   <sv>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</sv>
   <tr>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</tr>
   <uk>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</uk>
   <zh_CN>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</zh_CN>
   <zh_TW>antiX 5.1.2 kernel Meltdown and Spectre patched, 64 bit</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-5.1.2-antix.1-amd64-smp
linux-headers-5.1.2-antix.1-amd64-smp
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-5.1.2-antix.1-amd64-smp
</postinstall>


<uninstall_package_names>
linux-image-5.1.2-antix.1-amd64-smp
linux-headers-5.1.2-antix.1-amd64-smp
</uninstall_package_names>
</app>