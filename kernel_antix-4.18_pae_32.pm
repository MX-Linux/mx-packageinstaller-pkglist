<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
antiX 4.18 32 bit pae
</name>

<description>
   <am>antiX 4.18.7 kernel pae 32 bit</am>
   <ca>antiX 4.18.7 kernel pae 32 bit</ca>
   <cs>antiX 4.18.7 kernel pae 32 bit</cs>
   <da>antiX 4.18.7 kernel pae 32 bit</da>
   <de>antiX 4.18.7 Kernel pae 32 bit</de>
   <el>antiX 4.18.7 πυρήνα pae 32 bit</el>
   <en>antiX 4.18.7 kernel pae 32 bit</en>
   <es>antiX 4.18.7 kernel pae 32 bit</es>
   <fi>antiX 4.18.7 kernel pae 32 bit</fi>
   <fr>Noyau antiX 4.18.7 pae, 32 bit</fr>
   <hi>antiX 4.18.7 kernel pae 32 bit</hi>
   <hr>antiX 4.18.7 kernel pae 32 bit</hr>
   <hu>antiX 4.18.7 kernel pae 32 bit</hu>
   <is>antiX 4.18.7 kernel pae 32 bit</is>
   <it>antiX 4.18.7 kernel pae 32 bit</it>
   <ja>antiX 4.18.7 kernel pae 32 bit</ja>
   <kk>antiX 4.18.7 kernel pae 32 bit</kk>
   <lt>antiX 4.18.7 kernel pae 32 bit</lt>
   <nl>antiX 4.18.7 kernel pae 32 bit</nl>
   <pl>antiX 4.18.7 kernel pae 32 bit</pl>
   <pt_BR>antiX 4.18.7 kernel pae 32 bit</pt_BR>
   <pt>Núcleo antiX 4.18.7 32 bit pae</pt>
   <ro>antiX 4.18.7 kernel pae 32 bit</ro>
   <ru>antiX ядро 4.18.7, 32 bit PAE</ru>
   <sk>antiX 4.18.7 kernel pae 32 bit</sk>
   <sq>antiX 4.18.7 kernel pae 32 bit</sq>
   <sv>antiX 4.18.7 kärna pae 32 bit</sv>
   <tr>antiX 4.18.7 kernel pae 32 bit</tr>
   <uk>antiX 4.18.7 kernel pae 32 bit</uk>
   <zh_TW>antiX 4.18.7 kernel pae 32 bit</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.18.7-antix.1-686-smp-pae
linux-headers-4.18.7-antix.1-686-smp-pae
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.18.7-antix.1-686-smp-pae
</postinstall>


<uninstall_package_names>
linux-image-4.18.7-antix.1-686-smp-pae
linux-headers-4.18.7-antix.1-686-smp-pae
</uninstall_package_names>
</app>
