<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
antix 4.9 32 bit pae
</name>

<description>
   <am>antiX 4.9.126 kernel, 32 bit pae</am>
   <ca>antiX 4.9.126 kernel, 32 bit pae</ca>
   <cs>antiX 4.9.126 kernel, 32 bit pae</cs>
   <da>antiX 4.9.126 kernel, 32 bit pae</da>
   <de>antiX 4.9.126 Kernel, 32 bit pae</de>
   <el>πυρήνας antiX 4.9.126, 32 bit pae</el>
   <en>antiX 4.9.126 kernel, 32 bit pae</en>
   <es>antiX 4.9.126 kernel, 32 bit pae</es>
   <fi>antiX 4.9.126 kernel, 32 bit pae</fi>
   <fr>Noyau antiX 4.9.126 pae, 32 bit</fr>
   <hi>antiX 4.9.126 kernel, 32 bit pae</hi>
   <hr>antiX 4.9.126 kernel, 32 bit pae</hr>
   <hu>antiX 4.9.126 kernel, 32 bit pae</hu>
   <is>antiX 4.9.126 kernel, 32 bit pae</is>
   <it>antiX 4.9.126 kernel, 32 bit pae</it>
   <ja>antiX 4.9.126 kernel, 32 bit pae</ja>
   <kk>antiX 4.9.126 kernel, 32 bit pae</kk>
   <lt>antiX 4.9.126 kernel, 32 bit pae</lt>
   <nl>antiX 4.9.126 kernel, 32 bit pae</nl>
   <pl>antiX 4.9.126 kernel, 32 bit pae</pl>
   <pt_BR>antiX 4.9.126 kernel, 32 bit pae</pt_BR>
   <pt>Núcleo antiX 4.9.126, 32 bit pae</pt>
   <ro>antiX 4.9.126 kernel, 32 bit pae</ro>
   <ru>antiX ядро 4.9.126, 32 bit PAE</ru>
   <sk>antiX 4.9.126 kernel, 32 bit pae</sk>
   <sq>antiX 4.9.126 kernel, 32 bit pae</sq>
   <sv>antiX 4.9.126 kärna, 32 bit pae</sv>
   <tr>antiX 4.9.126 kernel, 32 bit pae</tr>
   <uk>antiX 4.9.126 kernel, 32 bit pae</uk>
   <zh_TW>antiX 4.9.126 kernel, 32 bit pae</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.9.126-antix.1-686-smp-pae
linux-headers-4.9.126-antix.1-686-smp-pae
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.9.126-antix.1-686-smp-pae
</postinstall>


<uninstall_package_names>
linux-image-4.9.126-antix.1-686-smp-pae
linux-headers-4.9.126-antix.1-686-smp-pae
</uninstall_package_names>
</app>
