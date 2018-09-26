<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
antiX 4.9 32 bit no-pae
</name>

<description>
   <am>antiX 4.9.91 kernel, 32 bit no-pae</am>
   <ca>antiX 4.9.91 kernel, 32 bit no-pae</ca>
   <cs>antiX 4.9.91 kernel, 32 bit no-pae</cs>
   <de>antiX 4.9.91 Kernel, 32 Bit kein PAE</de>
   <el>antiX 4.9.91 kernel, 32 bit no-pae</el>
   <en>antiX 4.9.91 kernel, 32 bit no-pae</en>
   <es>antiX 4.9.91 kernel, 32 bit no-pae</es>
   <fi>antiX 4.9.91 kernel, 32 bit no-pae</fi>
   <fr>Noyau antiX 4.9.91 no-pae 32 bit</fr>
   <hi>antiX 4.9.91 kernel, 32 bit no-pae</hi>
   <hr>antiX 4.9.91 kernel, 32 bit no-pae</hr>
   <hu>antiX 4.9.91 kernel, 32 bit no-pae</hu>
   <it>antiX 4.9.91 kernel, 32 bit no-pae</it>
   <ja>antiX 4.9.91 kernel, 32 bit no-pae</ja>
   <kk>antiX 4.9.91 kernel, 32 bit no-pae</kk>
   <lt>antiX 4.9.91 kernel, 32 bit no-pae</lt>
   <nl>antiX 4.9.91 kernel, 32 bit no-pae</nl>
   <pl>antiX 4.9.91 kernel, 32 bit no-pae</pl>
   <pt_BR>antiX 4.9.91 kernel, 32 bit no-pae</pt_BR>
   <pt>antiX 4.9.91 kernel, 32 bit no-pae</pt>
   <ro>antiX 4.9.91 kernel, 32 bit no-pae</ro>
   <ru>antiX 4.9.91 kernel, 32 bit no-pae</ru>
   <sk>antiX 4.9.91 kernel, 32 bit no-pae</sk>
   <sv>antiX 4.9.91 kärna, 32 bit no-pae</sv>
   <tr>antiX 4.9.91 kernel, 32 bit no-pae</tr>
   <uk>antiX 4.9.91 kernel, 32 bit no-pae</uk>
   <zh_TW>antiX 4.9.91 kernel, 32 bit no-pae</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.9.91-antix.1-486-smp
linux-headers-4.9.91-antix.1-486-smp
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.9.91-antix.1-486-smp
</postinstall>


<uninstall_package_names>
linux-image-4.9.91-antix.1-486-smp
linux-headers-4.9.91-antix.1-486-smp
</uninstall_package_names>
</app>
