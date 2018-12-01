<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Debian 32 bit no-pae
</name>

<description>
   <am>Default Debian 4.9 32bit linux kernel, no-PAE, single core</am>
   <ca>Nucli de Debian 4.9 32 bit sense PAE, single core</ca>
   <cs>Default Debian 4.9 32bit linux kernel, no-PAE, single core</cs>
   <da>Default Debian 4.9 32bit linux kernel, no-PAE, single core</da>
   <de>Standard Debian 4.9 32bit Linux Kernel, no-PAE, Einzelkern</de>
   <el>Προκαθορισμένο Debian 4.9 32bit linux kernel, no-PAE, single core</el>
   <en>Default Debian 4.9 32bit linux kernel, no-PAE, single core</en>
   <es>Default Debian 4.9 32bit linux kernel, no-PAE, single core</es>
   <fi>Default Debian 4.9 32bit linux kernel, no-PAE, single core</fi>
   <fr>Noyau Debian 4.9 32bit no-PAE, single core</fr>
   <hi>Default Debian 4.9 32bit linux kernel, no-PAE, single core</hi>
   <hr>Default Debian 4.9 32bit linux kernel, no-PAE, single core</hr>
   <hu>Default Debian 4.9 32bit linux kernel, no-PAE, single core</hu>
   <is>Default Debian 4.9 32bit linux kernel, no-PAE, single core</is>
   <it>Default Debian 4.9 32bit linux kernel, no-PAE, core singolo</it>
   <ja>Default Debian 4.9 32bit linux kernel, no-PAE, single core</ja>
   <kk>Default Debian 4.9 32bit linux kernel, no-PAE, single core</kk>
   <lt>Default Debian 4.9 32bit linux kernel, no-PAE, single core</lt>
   <nl>Standaard Debian 4.9 32bit linux kernel, geen PAE, single core</nl>
   <pl>Default Debian 4.9 32bit linux kernel, no-PAE, single core</pl>
   <pt_BR>Default Debian 4.9 32bit linux kernel, no-PAE, single core</pt_BR>
   <pt>Núcleo linux padrão Debian 4.9 32bit s/ PAE, para processadores single core</pt>
   <ro>Default Debian 4.9 32bit linux kernel, no-PAE, single core</ro>
   <ru>Debian ядро по умолчанию 4.9, 32bit no-PAE одно ядро</ru>
   <sk>Default Debian 4.9 32bit linux kernel, no-PAE, single core</sk>
   <sq>Default Debian 4.9 32bit linux kernel, no-PAE, single core</sq>
   <sv>Standard Debian 4.9 32bit linux kärna, no-PAE, single core</sv>
   <tr>Default Debian 4.9 32bit linux kernel, no-PAE, single core</tr>
   <uk>Default Debian 4.9 32bit linux kernel, no-PAE, single core</uk>
   <zh_TW>Default Debian 4.9 32bit linux kernel, no-PAE, single core</zh_TW>
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
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-686
</postinstall>


<uninstall_package_names>
linux-image-686
linux-headers-686
</uninstall_package_names>
</app>
