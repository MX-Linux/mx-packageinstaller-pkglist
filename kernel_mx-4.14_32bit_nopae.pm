<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
MX 4.14 no-pae
</name>

<description>
   <am>MX 4.14 kernel, 32 bit no-pae</am>
   <ca>Nucli de MX 4.14, 32 bit sense PAE</ca>
   <cs>MX 4.14 kernel, 32 bit no-pae</cs>
   <de>MX 4.14-Kernel, 32-Bit-No-PAE</de>
   <el>MX 4.14 kernel, 32 bit no-pae</el>
   <en>MX 4.14 kernel, 32 bit no-pae</en>
   <es>MX 4.14 kernel, 32 bit no-pae</es>
   <fi>MX 4.14 kernel, 32 bit no-pae</fi>
   <fr>Noyau MX 4.14, 32 bit no-pae</fr>
   <hi>MX 4.14 kernel, 32 bit no-pae</hi>
   <hr>MX 4.14 kernel, 32 bit no-pae</hr>
   <hu>MX 4.14 kernel, 32 bit no-pae</hu>
   <it>MX 4.14 kernel, 32 bit no-pae</it>
   <ja>MX 4.14 kernel, 32 bit no-pae</ja>
   <kk>MX 4.14 kernel, 32 bit no-pae</kk>
   <lt>MX 4.14 kernel, 32 bit no-pae</lt>
   <nl>MX 4.14 kernel, 32 bit geen pae</nl>
   <pl>MX 4.14 kernel, 32 bit no-pae</pl>
   <pt_BR>MX 4.14 kernel, 32 bit no-pae</pt_BR>
   <pt>MX 4.14 kernel, 32 bit no-pae</pt>
   <ro>MX 4.14 kernel, 32 bit no-pae</ro>
   <ru>MX 4.14 kernel, 32 bit no-pae</ru>
   <sk>MX 4.14 kernel, 32 bit no-pae</sk>
   <sv>MX 4.14 kärna, 32 bit no-pae</sv>
   <tr>MX 4.14 kernel, 32 bit no-pae</tr>
   <uk>MX 4.14 kernel, 32 bit no-pae</uk>
   <zh_TW>MX 4.14 kernel, 32 bit no-pae</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.14.0-3-686
linux-headers-4.14.0-3-686
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.14.0-3-686
</postinstall>


<uninstall_package_names>
linux-image-4.14.0-3-686
linux-headers-4.14.0-3-686
</uninstall_package_names>
</app>
