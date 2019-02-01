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
   <ar>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</ar>
   <bg>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</bg>
   <ca>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</ca>
   <cs>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</cs>
   <da>MX 4.19 kerne meltdown- og spectre-rettelse, 64 bit</da>
   <de>MX 4.19 Kernel - Meltdown und Spectre gepatcht, 64 bit</de>
   <el>MX 4.19 πυρήνα Meltdown και Specter patched, 64 bit</el>
   <en>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</en>
   <es>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</es>
   <et>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</et>
   <eu>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</eu>
   <fa>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</fa>
   <fi>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</fi>
   <fr>Noyau MX 4.19 patché pour Meltdown et Spectre, 64 bit</fr>
   <he_IL>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</he_IL>
   <hi>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</hi>
   <hr>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</hr>
   <hu>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</hu>
   <id>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</id>
   <is>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</is>
   <it>Kernel MX 4.19, con patch per Meltdown and Spectre, 64 bit</it>
   <ja_JP>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</ja_JP>
   <ja>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</ja>
   <kk>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</kk>
   <ko>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</ko>
   <lt>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</lt>
   <mk>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</mk>
   <nb>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</nb>
   <nl>MX 4.19 kernel Meltdown en Spectre patched, 64 bit</nl>
   <pl>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</pl>
   <pt_BR>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</pt_BR>
   <pt>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</pt>
   <ro>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</ro>
   <ru>MX ядро 4.19 с патчами Meltdown и Spectre, 64 bit</ru>
   <sk>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</sk>
   <sl>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</sl>
   <sq>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</sq>
   <sr>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</sr>
   <sv>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</sv>
   <tr>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</tr>
   <uk>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</uk>
   <zh_CN>MX 4.19 kernel Meltdown and Spectre patched, 64 bit</zh_CN>
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
