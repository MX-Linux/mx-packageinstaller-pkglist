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
   <ar>Default Debian 4.9 kernel Meltdown patched, 64bit</ar>
   <bg>Default Debian 4.9 kernel Meltdown patched, 64bit</bg>
   <ca>Nucli de Debian 4.9 64 bit, amb pedaç per Meltdown</ca>
   <cs>Default Debian 4.9 kernel Meltdown patched, 64bit</cs>
   <da>Standard Debian 4.9 kerne meltdown-rettelse, 64bit</da>
   <de>Standard Debian 4.9 Kernel Meltdown gepatcht, 64bit</de>
   <el>Προκαθορισμένο Debian 4.9 πυρήνα Meltdown patched, 64bit</el>
   <en>Default Debian 4.9 kernel Meltdown patched, 64bit</en>
   <es>kernel antiX 4.9 con parche Meltdown y Spectre, 64 bit</es>
   <et>Default Debian 4.9 kernel Meltdown patched, 64bit</et>
   <eu>Default Debian 4.9 kernel Meltdown patched, 64bit</eu>
   <fa>Default Debian 4.9 kernel Meltdown patched, 64bit</fa>
   <fi>Default Debian 4.9 kernel Meltdown patched, 64bit</fi>
   <fr>Noyau Debian 4.9 correctifs Meltdown, 64bit</fr>
   <he_IL>Default Debian 4.9 kernel Meltdown patched, 64bit</he_IL>
   <hi>Default Debian 4.9 kernel Meltdown patched, 64bit</hi>
   <hr>Default Debian 4.9 kernel Meltdown patched, 64bit</hr>
   <hu>Default Debian 4.9 kernel Meltdown patched, 64bit</hu>
   <id>Default Debian 4.9 kernel Meltdown patched, 64bit</id>
   <is>Default Debian 4.9 kernel Meltdown patched, 64bit</is>
   <it>Default Debian 4.9 kernel con la patch per Meltdown, 64bit</it>
   <ja_JP>Default Debian 4.9 kernel Meltdown patched, 64bit</ja_JP>
   <ja>Default Debian 4.9 kernel Meltdown patched, 64bit</ja>
   <kk>Default Debian 4.9 kernel Meltdown patched, 64bit</kk>
   <ko>Default Debian 4.9 kernel Meltdown patched, 64bit</ko>
   <lt>Default Debian 4.9 kernel Meltdown patched, 64bit</lt>
   <mk>Default Debian 4.9 kernel Meltdown patched, 64bit</mk>
   <mr>Default Debian 4.9 kernel Meltdown patched, 64bit</mr>
   <nb>Default Debian 4.9 kernel Meltdown patched, 64bit</nb>
   <nl>Standaard Debian 4.9 kernel Meltdown patched, 64bit</nl>
   <pl>domyślny Debian 4.9 kernel Meltdown patched, 64bit</pl>
   <pt_BR>Default Debian 4.9 kernel Meltdown patched, 64bit</pt_BR>
   <pt>Núcleo padrão Debian 4.9 com correcções para as falhas Meltdown e Spectre, 64 bit</pt>
   <ro>Default Debian 4.9 kernel Meltdown patched, 64bit</ro>
   <ru>Debian ядро по умолчанию 4.9 с патчем от Meltdown, 64bit</ru>
   <sk>Default Debian 4.9 kernel Meltdown patched, 64bit</sk>
   <sl>Privzeti Debian 4.9 kernel Meltdown patched, 64bit</sl>
   <sq>Default Debian 4.9 kernel Meltdown patched, 64bit</sq>
   <sr>Default Debian 4.9 kernel Meltdown patched, 64bit</sr>
   <sv>Standard Debian 4.9 kärna Meltdown patched, 64bit</sv>
   <tr>Default Debian 4.9 kernel Meltdown patched, 64bit</tr>
   <uk>Default Debian 4.9 kernel Meltdown patched, 64bit</uk>
   <zh_CN>Default Debian 4.9 kernel Meltdown patched, 64bit</zh_CN>
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
rebuild_dkms_packages.sh linux-image-amd64
</postinstall>


<uninstall_package_names>
linux-image-amd64
linux-headers-amd64
</uninstall_package_names>
</app>
