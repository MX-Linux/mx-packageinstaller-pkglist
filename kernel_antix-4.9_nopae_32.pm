<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
antiX 4.9 32 bit no-pae
</name>

<description>
   <am>antiX 4.9.146 kernel, 32 bit no-pae</am>
   <ca>antiX 4.9.146 kernel, 32 bit no-pae</ca>
   <cs>antiX 4.9.146 kernel, 32 bit no-pae</cs>
   <da>antiX 4.9.146 kernel, 32 bit no-pae</da>
   <de>antiX 4.9.146 Kernel, 32 bit no-pae</de>
   <el>πυρήνα antiX 4.9.146, 32 bit no-pae</el>
   <en>antiX 4.9.146 kernel, 32 bit no-pae</en>
   <es>antiX 4.9.146 kernel, 32 bit no-pae</es>
   <fi>antiX 4.9.146 kernel, 32 bit no-pae</fi>
   <fr>Noyau antiX 4.9.146 no-pae, 32 bit</fr>
   <hi>antiX 4.9.146 kernel, 32 bit no-pae</hi>
   <hr>antiX 4.9.146 kernel, 32 bit no-pae</hr>
   <hu>antiX 4.9.146 kernel, 32 bit no-pae</hu>
   <is>antiX 4.9.146 kernel, 32 bit no-pae</is>
   <it>antiX 4.9.146 kernel, 32 bit no-pae</it>
   <ja>antiX 4.9.146 kernel, 32 bit no-pae</ja>
   <kk>antiX 4.9.146 kernel, 32 bit no-pae</kk>
   <lt>antiX 4.9.146 kernel, 32 bit no-pae</lt>
   <nl>antiX 4.9.146 kernel, 32 bit no-pae</nl>
   <pl>antiX 4.9.146 kernel, 32 bit no-pae</pl>
   <pt_BR>antiX 4.9.146 kernel, 32 bit no-pae</pt_BR>
   <pt>Núcleo antiX 4.9.146, 32 bit no-pae</pt>
   <ro>antiX 4.9.146 kernel, 32 bit no-pae</ro>
   <ru>antiX ядро 4.9.146, 32 bit no-PAE</ru>
   <sk>antiX 4.9.146 kernel, 32 bit no-pae</sk>
   <sq>antiX 4.9.146 kernel, 32 bit no-pae</sq>
   <sv>antiX 4.9.146 kärna, 32 bit no-pae</sv>
   <tr>antiX 4.9.146 kernel, 32 bit no-pae</tr>
   <uk>antiX 4.9.146 kernel, 32 bit no-pae</uk>
   <zh_TW>antiX 4.9.146 kernel, 32 bit no-pae</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.9.146-antix.1-486-smp
linux-headers-4.9.146-antix.1-486-smp
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.9.146-antix.1-486-smp
</postinstall>


<uninstall_package_names>
linux-image-4.9.146-antix.1-486-smp
linux-headers-4.9.146-antix.1-486-smp
</uninstall_package_names>
</app>
