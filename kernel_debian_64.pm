<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Debian 64 bit
</name>

<description>
   <am>Default Debian 4.9 kernel Meltdown patched, 64bit</am>
   <ca>Nucli de Debian 4.9 64 bit, amb pedaç per Meltdown</ca>
   <cs>Default Debian 4.9 kernel Meltdown patched, 64bit</cs>
   <da>Default Debian 4.9 kernel Meltdown patched, 64bit</da>
   <de>Standard Debian 4.9 Kernel Meltdown gepatcht, 64bit</de>
   <el>Προκαθορισμένο Debian 4.9 πυρήνα Meltdown patched, 64bit</el>
   <en>Default Debian 4.9 kernel Meltdown patched, 64bit</en>
   <es>Default Debian 4.9 kernel Meltdown patched, 64bit</es>
   <fi>Default Debian 4.9 kernel Meltdown patched, 64bit</fi>
   <fr>Noyau Debian 4.9 correctifs Meltdown, 64bit</fr>
   <hi>Default Debian 4.9 kernel Meltdown patched, 64bit</hi>
   <hr>Default Debian 4.9 kernel Meltdown patched, 64bit</hr>
   <hu>Default Debian 4.9 kernel Meltdown patched, 64bit</hu>
   <is>Default Debian 4.9 kernel Meltdown patched, 64bit</is>
   <it>Default Debian 4.9 kernel con la patch per Meltdown, 64bit</it>
   <ja>Default Debian 4.9 kernel Meltdown patched, 64bit</ja>
   <kk>Default Debian 4.9 kernel Meltdown patched, 64bit</kk>
   <lt>Default Debian 4.9 kernel Meltdown patched, 64bit</lt>
   <nl>Standaard Debian 4.9 kernel Meltdown patched, 64bit</nl>
   <pl>Default Debian 4.9 kernel Meltdown patched, 64bit</pl>
   <pt_BR>Default Debian 4.9 kernel Meltdown patched, 64bit</pt_BR>
   <pt>Núcleo padrão Debian 4.9 com correcções para as falhas Meltdown e Spectre, 64 bit</pt>
   <ro>Default Debian 4.9 kernel Meltdown patched, 64bit</ro>
   <ru>Debian ядро по умолчанию 4.9 с патчем от Meltdown, 64bit</ru>
   <sk>Default Debian 4.9 kernel Meltdown patched, 64bit</sk>
   <sq>Default Debian 4.9 kernel Meltdown patched, 64bit</sq>
   <sv>Standard Debian 4.9 kärna Meltdown patched, 64bit</sv>
   <tr>Default Debian 4.9 kernel Meltdown patched, 64bit</tr>
   <uk>Default Debian 4.9 kernel Meltdown patched, 64bit</uk>
   <zh_TW>Default Debian 4.9 kernel Meltdown patched, 64bit</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-amd64
linux-headers-amd64
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-amd64
</postinstall>


<uninstall_package_names>
linux-image-amd64
linux-headers-amd64
</uninstall_package_names>
</app>
