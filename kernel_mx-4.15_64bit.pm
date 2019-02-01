<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
MX 4.15
</name>

<description>
   <am>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</am>
   <ar>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</ar>
   <bg>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</bg>
   <ca>Nucli de MX 4.15 64 bit, amb pedaç per Meltdown i Spectre</ca>
   <cs>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</cs>
   <da>MX 4.15 kerne meltdown- og spectre-rettelse, 64 bit</da>
   <de>MX 4.15 Kernel Meltdown und Spectre gepatcht, 64 Bit</de>
   <el>MX 4.15 πυρήνα Meltdown και Specter patched, 64 bit</el>
   <en>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</en>
   <es>kernel MX 4.15 con parche Meltdown y Spectre, 64 bit</es>
   <et>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</et>
   <eu>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</eu>
   <fa>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</fa>
   <fi>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</fi>
   <fr>Noyau MX 4.15 correctifs Meltdown et Spectre, 64 bit</fr>
   <he_IL>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</he_IL>
   <hi>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</hi>
   <hr>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</hr>
   <hu>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</hu>
   <id>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</id>
   <is>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</is>
   <it>MX 4.15 kernel con la patch per Meltdown e Spectre, 64 bit</it>
   <ja_JP>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</ja_JP>
   <ja>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</ja>
   <kk>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</kk>
   <ko>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</ko>
   <lt>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</lt>
   <mk>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</mk>
   <nb>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</nb>
   <nl>MX 4.15 kernel Meltdown en Spectre patched, 64 bit</nl>
   <pl>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</pl>
   <pt_BR>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</pt_BR>
   <pt>Núcleo MX 4.15 com correcções para as falhas Meltdown e Spectre, 64 bit</pt>
   <ro>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</ro>
   <ru>MX ядро 4.15 с патчами от Meltdown и Spectre, 64 bit</ru>
   <sk>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</sk>
   <sl>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</sl>
   <sq>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</sq>
   <sr>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</sr>
   <sv>MX 4.15 kärna Meltdown och Spectre patched, 64 bit</sv>
   <tr>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</tr>
   <uk>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</uk>
   <zh_CN>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</zh_CN>
   <zh_TW>MX 4.15 kernel Meltdown and Spectre patched, 64 bit</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.15.0-1-amd64
linux-headers-4.15.0-1-amd64
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.15.0-1-amd64
</postinstall>


<uninstall_package_names>
linux-image-4.15.0-1-amd64
linux-headers-4.15.0-1-amd64
</uninstall_package_names>
</app>
