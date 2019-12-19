<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Debian 32 bit no-pae
</name>

<description>
   <am>Default Debian 32bit linux kernel, no-PAE, single core</am>
   <ar>Default Debian 32bit linux kernel, no-PAE, single core</ar>
   <bg>Default Debian 32bit linux kernel, no-PAE, single core</bg>
   <ca>Nucli de Debian 32 bit sense PAE, single core</ca>
   <cs>Default Debian 32bit linux kernel, no-PAE, single core</cs>
   <da>Standard Debian 32bit linux-kerne, uden PAE, én kerne</da>
   <de>Standard Debian 32bit Linux Kernel, no-PAE, Einzelkern</de>
   <el>Προκαθορισμένο Debian 32bit linux kernel, no-PAE, single core</el>
   <en>Default Debian 32bit linux kernel, no-PAE, single core</en>
   <es>Kernel de linux Debian Predeterminado 32bit, no-PAE, un solo nucleo</es>
   <et>Default Debian 32bit linux kernel, no-PAE, single core</et>
   <eu>Default Debian 32bit linux kernel, no-PAE, single core</eu>
   <fa>Default Debian 32bit linux kernel, no-PAE, single core</fa>
   <fi>Default Debian 32bit linux kernel, no-PAE, single core</fi>
   <fr>Noyau Debian 32bit no-PAE, single core</fr>
   <he_IL>Default Debian 32bit linux kernel, no-PAE, single core</he_IL>
   <hi>Default Debian 32bit linux kernel, no-PAE, single core</hi>
   <hr>Default Debian 32bit linux kernel, no-PAE, single core</hr>
   <hu>Default Debian 32bit linux kernel, no-PAE, single core</hu>
   <id>Default Debian 32bit linux kernel, no-PAE, single core</id>
   <is>Default Debian 32bit linux kernel, no-PAE, single core</is>
   <it>Default Debian 32bit linux kernel, no-PAE, core singolo</it>
   <ja_JP>Default Debian 32bit linux kernel, no-PAE, single core</ja_JP>
   <ja>Default Debian 32bit linux kernel, no-PAE, single core</ja>
   <kk>Default Debian 32bit linux kernel, no-PAE, single core</kk>
   <ko>Default Debian 32bit linux kernel, no-PAE, single core</ko>
   <lt>Default Debian 32bit linux kernel, no-PAE, single core</lt>
   <mk>Default Debian 32bit linux kernel, no-PAE, single core</mk>
   <mr>Default Debian 32bit linux kernel, no-PAE, single core</mr>
   <nb>Default Debian 32bit linux kernel, no-PAE, single core</nb>
   <nl>Standaard Debian 32bit linux kernel, geen PAE, single core</nl>
   <pl>domyślny Debian 32bit linux kernel, no-PAE, single core</pl>
   <pt_BR>Default Debian 32bit linux kernel, no-PAE, single core</pt_BR>
   <pt>Núcleo linux padrão Debian 32bit s/ PAE, para processadores single core</pt>
   <ro>Default Debian 32bit linux kernel, no-PAE, single core</ro>
   <ru>Debian ядро по умолчанию 32bit no-PAE одно ядро</ru>
   <sk>Default Debian 32bit linux kernel, no-PAE, single core</sk>
   <sl>Privzeti Debian 32bit linux kernel, no-PAE, single core</sl>
   <sq>Default Debian 32bit linux kernel, no-PAE, single core</sq>
   <sr>Default Debian 32bit linux kernel, no-PAE, single core</sr>
   <sv>Standard Debian 32bit linux kärna, no-PAE, single core</sv>
   <tr>Default Debian 32bit linux kernel, no-PAE, single core</tr>
   <uk>Default Debian 32bit linux kernel, no-PAE, single core</uk>
   <zh_CN>Default Debian 32bit linux kernel, no-PAE, single core</zh_CN>
   <zh_TW>Default Debian 32bit linux kernel, no-PAE, single core</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-686
linux-headers-686
</install_package_names>


<postinstall>
rebuild_dkms_packages.sh linux-image-686
</postinstall>


<uninstall_package_names>
linux-image-686
linux-headers-686
</uninstall_package_names>
</app>
