<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Debian 64 bit
</name>

<description>
   <am>Default Debian kernel Meltdown patched, 64bit</am>
   <ar>Default Debian kernel Meltdown patched, 64bit</ar>
   <bg>Default Debian kernel Meltdown patched, 64bit</bg>
   <ca>Nucli de Debian 64 bit, amb pedaç per Meltdown</ca>
   <cs>Default Debian kernel Meltdown patched, 64bit</cs>
   <da>Standard Debian kerne meltdown-rettelse, 64bit</da>
   <de>Standard Debian Kernel Meltdown gepatcht, 64bit</de>
   <el>Προκαθορισμένο Debian πυρήνα Meltdown patched, 64bit</el>
   <en>Default Debian kernel Meltdown patched, 64bit</en>
   <es>kernel antiX con parche Meltdown y Spectre, 64 bit</es>
   <et>Default Debian kernel Meltdown patched, 64bit</et>
   <eu>Default Debian kernel Meltdown patched, 64bit</eu>
   <fa>Default Debian kernel Meltdown patched, 64bit</fa>
   <fi>Default Debian kernel Meltdown patched, 64bit</fi>
   <fr>Noyau Debian correctifs Meltdown, 64bit</fr>
   <he_IL>Default Debian kernel Meltdown patched, 64bit</he_IL>
   <hi>Default Debian kernel Meltdown patched, 64bit</hi>
   <hr>Default Debian kernel Meltdown patched, 64bit</hr>
   <hu>Default Debian kernel Meltdown patched, 64bit</hu>
   <id>Default Debian kernel Meltdown patched, 64bit</id>
   <is>Default Debian kernel Meltdown patched, 64bit</is>
   <it>Default Debian kernel con la patch per Meltdown, 64bit</it>
   <ja_JP>Default Debian kernel Meltdown patched, 64bit</ja_JP>
   <ja>Default Debian kernel Meltdown patched, 64bit</ja>
   <kk>Default Debian kernel Meltdown patched, 64bit</kk>
   <ko>Default Debian kernel Meltdown patched, 64bit</ko>
   <lt>Default Debian kernel Meltdown patched, 64bit</lt>
   <mk>Default Debian kernel Meltdown patched, 64bit</mk>
   <mr>Default Debian kernel Meltdown patched, 64bit</mr>
   <nb>Default Debian kernel Meltdown patched, 64bit</nb>
   <nl>Standaard Debian kernel Meltdown patched, 64bit</nl>
   <pl>domyślny Debian kernel Meltdown patched, 64bit</pl>
   <pt_BR>Default Debian kernel Meltdown patched, 64bit</pt_BR>
   <pt>Núcleo padrão Debian com correcções para as falhas Meltdown e Spectre, 64 bit</pt>
   <ro>Default Debian kernel Meltdown patched, 64bit</ro>
   <ru>Debian ядро по умолчанию с патчем от Meltdown, 64bit</ru>
   <sk>Default Debian kernel Meltdown patched, 64bit</sk>
   <sl>Privzeti Debian kernel Meltdown patched, 64bit</sl>
   <sq>Default Debian kernel Meltdown patched, 64bit</sq>
   <sr>Default Debian kernel Meltdown patched, 64bit</sr>
   <sv>Standard Debian kärna Meltdown patched, 64bit</sv>
   <tr>Default Debian kernel Meltdown patched, 64bit</tr>
   <uk>Default Debian kernel Meltdown patched, 64bit</uk>
   <zh_CN>Default Debian kernel Meltdown patched, 64bit</zh_CN>
   <zh_TW>Default Debian kernel Meltdown patched, 64bit</zh_TW>
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
