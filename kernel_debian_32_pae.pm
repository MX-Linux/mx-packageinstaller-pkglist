<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Debian 32 bit w/pae
</name>

<description>
   <am>Default Debian 4.9 32bit linux kernel w/PAE</am>
   <ca>Default Debian 4.9 32bit linux kernel w/PAE</ca>
   <cs>Default Debian 4.9 32bit linux kernel w/PAE</cs>
   <de>Standard Debian 4.9 32bit Linux Kernel mit PAE</de>
   <el>Default Debian 4.9 32bit linux kernel w/PAE</el>
   <en>Default Debian 4.9 32bit linux kernel w/PAE</en>
   <es>Default Debian 4.9 32bit linux kernel w/PAE</es>
   <fi>Default Debian 4.9 32bit linux kernel w/PAE</fi>
   <fr>Noyau Debian 4.9 32bit w/PAE</fr>
   <hi>Default Debian 4.9 32bit linux kernel w/PAE</hi>
   <hr>Default Debian 4.9 32bit linux kernel w/PAE</hr>
   <hu>Default Debian 4.9 32bit linux kernel w/PAE</hu>
   <it>Default Debian 4.9 32bit linux kernel w/PAE</it>
   <ja>Default Debian 4.9 32bit linux kernel w/PAE</ja>
   <kk>Default Debian 4.9 32bit linux kernel w/PAE</kk>
   <lt>Default Debian 4.9 32bit linux kernel w/PAE</lt>
   <nl>Default Debian 4.9 32bit linux kernel w/PAE</nl>
   <pl>Default Debian 4.9 32bit linux kernel w/PAE</pl>
   <pt_BR>Default Debian 4.9 32bit linux kernel w/PAE</pt_BR>
   <pt>Default Debian 4.9 32bit linux kernel w/PAE</pt>
   <ro>Default Debian 4.9 32bit linux kernel w/PAE</ro>
   <ru>Default Debian 4.9 32bit linux kernel w/PAE</ru>
   <sk>Default Debian 4.9 32bit linux kernel w/PAE</sk>
   <sv>Standard Debian 4.9 32bit linux kärna w/PAE</sv>
   <tr>Default Debian 4.9 32bit linux kernel w/PAE</tr>
   <uk>Default Debian 4.9 32bit linux kernel w/PAE</uk>
   <zh_TW>Default Debian 4.9 32bit linux kernel w/PAE</zh_TW>
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
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh
</postinstall>


<uninstall_package_names>
linux-image-686-pae
linux-headers-686-pae
</uninstall_package_names>
</app>
