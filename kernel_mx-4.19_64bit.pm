<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
MX 4.19
</name>

<description>
   <am>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</am>
   <ca>Nucli de MX 4.19 64 bit, amb pedaç per Meltdown i Spectre</ca>
   <cs>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</cs>
   <da>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</da>
   <de>MX 4.19 Kernel Meltdown und Spectre gepatcht, 64 Bit</de>
   <el>MX 4.19 πυρήνα Meltdown και Specter patched, 64 bit</el>
   <en>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</en>
   <es>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</es>
   <fi>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</fi>
   <fr>Noyau MX 4.19 correctifs Meltdown et Spectre, 64 bit</fr>
   <hi>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</hi>
   <hr>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</hr>
   <hu>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</hu>
   <is>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</is>
   <it>MX 4.19 kernel con la patch per Meltdown e Spectre, 64 bit</it>
   <ja>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</ja>
   <kk>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</kk>
   <lt>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</lt>
   <nl>MX 4.19 kernel Meltdown en Spectre patched, 64 bit</nl>
   <pl>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</pl>
   <pt_BR>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</pt_BR>
   <pt>Núcleo MX 4.19 com correcções para as falhas Meltdown e Spectre, 64 bit</pt>
   <ro>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</ro>
   <ru>MX ядро 4.19 с патчами от Meltdown и Spectre, 64 bit</ru>
   <sk>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</sk>
   <sq>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</sq>
   <sv>MX 4.19 kärna Meltdown och Spectre patched, 64 bit</sv>
   <tr>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</tr>
   <uk>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</uk>
   <zh_TW>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.19.0-1-amd64-unsigned
linux-headers-4.19.0-1-amd64
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.19.0-1-amd64-unsigned
</postinstall>


<uninstall_package_names>
linux-image-4.19.0-1-amd64-unsigned
linux-headers-4.19.0-1-amd64
</uninstall_package_names>
</app>
