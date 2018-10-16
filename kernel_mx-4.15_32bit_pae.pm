<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
MX 4.15 PAE
</name>

<description>
   <am>MX 4.15 kernel, 32 bit PAE</am>
   <ca>Nucli de MX 4.15 32 bit, amb PAE</ca>
   <cs>MX 4.15 kernel, 32 bit PAE</cs>
   <de>MX 4.15 Kernel, 32 Bit PAE</de>
   <el>MX 4.15 kernel, 32 bit PAE</el>
   <en>MX 4.15 kernel, 32 bit PAE</en>
   <es>MX 4.15 kernel, 32 bit PAE</es>
   <fi>MX 4.15 kernel, 32 bit PAE</fi>
   <fr>Noyau MX 4.15, 32 bit PAE</fr>
   <hi>MX 4.15 kernel, 32 bit PAE</hi>
   <hr>MX 4.15 kernel, 32 bit PAE</hr>
   <hu>MX 4.15 kernel, 32 bit PAE</hu>
   <it>MX 4.15 kernel, 32 bit PAE</it>
   <ja>MX 4.15 kernel, 32 bit PAE</ja>
   <kk>MX 4.15 kernel, 32 bit PAE</kk>
   <lt>MX 4.15 kernel, 32 bit PAE</lt>
   <nl>MX 4.15 kernel, 32 bit PAE</nl>
   <pl>MX 4.15 kernel, 32 bit PAE</pl>
   <pt_BR>MX 4.15 kernel, 32 bit PAE</pt_BR>
   <pt>MX 4.15 kernel, 32 bit PAE</pt>
   <ro>MX 4.15 kernel, 32 bit PAE</ro>
   <ru>MX 4.15 kernel, 32 bit PAE</ru>
   <sk>MX 4.15 kernel, 32 bit PAE</sk>
   <sv>MX 4.15 kärna, 32 bit PAE</sv>
   <tr>MX 4.15 kernel, 32 bit PAE</tr>
   <uk>MX 4.15 kernel, 32 bit PAE</uk>
   <zh_TW>MX 4.15 kernel, 32 bit PAE</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.15.0-1-686-pae
linux-headers-4.15.0-1-686-pae
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.15.0-1-686-pae
</postinstall>


<uninstall_package_names>
linux-image-4.15.0-1-686-pae
linux-headers-4.15.0-1-686-pae
</uninstall_package_names>
</app>
