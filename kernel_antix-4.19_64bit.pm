<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
antiX 4.19 64 bit
</name>

<description>
   <am>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</am>
   <ca>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</ca>
   <cs>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</cs>
   <da>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</da>
   <de>antiX 4.19.8 Kernel - Meltdown und Spectre gepatcht, 64 Bit</de>
   <el>antiX 4.19.8 πυρήνα Meltdown και Spectre patched, 64 bit</el>
   <en>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</en>
   <es>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</es>
   <fi>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</fi>
   <fr>Noyau antiX 4.19.8 correctifs Meltdown et Spectre, 64 bit</fr>
   <hi>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</hi>
   <hr>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</hr>
   <hu>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</hu>
   <is>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</is>
   <it>antiX 4.19.8 kernel, con patch per Meltdown e Spectre, 64 bit</it>
   <ja>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</ja>
   <kk>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</kk>
   <lt>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</lt>
   <nl>antiX 4.19.8 kernel Meltdown en Spectre patched, 64 bit</nl>
   <pl>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</pl>
   <pt_BR>antiX 4.19.8 kernel com correções para as falhas Meltdown e Spectre, 64 bit</pt_BR>
   <pt>Núcleo antiX 4.19.8 com correcções para as falhas Meltdown e Spectre, 64 bit</pt>
   <ro>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</ro>
   <ru>antiX ядро 4.19.8 с патчами от Meltdown и Spectre, 64 bit</ru>
   <sk>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</sk>
   <sq>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</sq>
   <sv>antiX 4.19.8 kärna Meltdown och Spectre fixad, 64 bit</sv>
   <tr>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</tr>
   <uk>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</uk>
   <zh_TW>antiX 4.19.8 kernel Meltdown and Spectre patched, 64 bit</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.19.8-antix.1-amd64-smp
linux-headers-4.19.8-antix.1-amd64-smp
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.19.8-antix.1-amd64-smp
</postinstall>


<uninstall_package_names>
linux-image-4.19.8-antix.1-amd64-smp
linux-headers-4.19.8-antix.1-amd64-smp
</uninstall_package_names>
</app>
