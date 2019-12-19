<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Debian 32 bit w/pae
</name>

<description>
   <am>Default Debian 32bit linux kernel w/PAE</am>
   <ar>Default Debian 32bit linux kernel w/PAE</ar>
   <bg>Default Debian 32bit linux kernel w/PAE</bg>
   <ca>Nucli de Debian 32bit, amb PAE</ca>
   <cs>Default Debian 32bit linux kernel w/PAE</cs>
   <da>Standard Debian 32bit linux-kerne med PAE</da>
   <de>Standard Debian 32bit Linux Kernel mit PAE</de>
   <el>Προεπιλεγμένο Debian 32bit linux kernel PAE</el>
   <en>Default Debian 32bit linux kernel w/PAE</en>
   <es>Kernel de linux Debian Predeterminado 32bit c/PAE</es>
   <et>Default Debian 32bit linux kernel w/PAE</et>
   <eu>Default Debian 32bit linux kernel w/PAE</eu>
   <fa>Default Debian 32bit linux kernel w/PAE</fa>
   <fi>Default Debian 32bit linux kernel w/PAE</fi>
   <fr>Noyau Debian 32bit w/PAE</fr>
   <he_IL>Default Debian 32bit linux kernel w/PAE</he_IL>
   <hi>Default Debian 32bit linux kernel w/PAE</hi>
   <hr>Default Debian 32bit linux kernel w/PAE</hr>
   <hu>Default Debian 32bit linux kernel w/PAE</hu>
   <id>Default Debian 32bit linux kernel w/PAE</id>
   <is>Default Debian 32bit linux kernel w/PAE</is>
   <it>Default Debian 32bit linux kernel PAE</it>
   <ja_JP>Default Debian 32bit linux kernel w/PAE</ja_JP>
   <ja>Default Debian 32bit linux kernel w/PAE</ja>
   <kk>Default Debian 32bit linux kernel w/PAE</kk>
   <ko>Default Debian 32bit linux kernel w/PAE</ko>
   <lt>Default Debian 32bit linux kernel w/PAE</lt>
   <mk>Default Debian 32bit linux kernel w/PAE</mk>
   <mr>Default Debian 32bit linux kernel w/PAE</mr>
   <nb>Default Debian 32bit linux kernel w/PAE</nb>
   <nl>Standaard Debian 32bit linux kernel met PAE</nl>
   <pl>domyślny Debian 32bit linux kernel w/PAE</pl>
   <pt_BR>Default Debian 32bit linux kernel w/PAE</pt_BR>
   <pt>Núcleo linux padrão Debian 32bit c/PAE</pt>
   <ro>Default Debian 32bit linux kernel w/PAE</ro>
   <ru>Debian ядро по умолчанию, 32bit PAE</ru>
   <sk>Default Debian 32bit linux kernel w/PAE</sk>
   <sl>Privzeti Debian 32bit linux kernel w/PAE</sl>
   <sq>Default Debian 32bit linux kernel w/PAE</sq>
   <sr>Default Debian 32bit linux kernel w/PAE</sr>
   <sv>Standard Debian 32bit linuxkärna med PAE</sv>
   <tr>Default Debian 32bit linux kernel w/PAE</tr>
   <uk>Default Debian 32bit linux kernel w/PAE</uk>
   <zh_CN>Default Debian 32bit linux kernel w/PAE</zh_CN>
   <zh_TW>Default Debian 32bit linux kernel w/PAE</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-686-pae
linux-headers-686-pae
</install_package_names>


<postinstall>
rebuild_dkms_packages.sh linux-image-686-pae
</postinstall>


<uninstall_package_names>
linux-image-686-pae
linux-headers-686-pae
</uninstall_package_names>
</app>
