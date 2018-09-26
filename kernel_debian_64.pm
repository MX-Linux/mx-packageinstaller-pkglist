<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Debian 64 bit
</name>

<description>
   <am>Default Debian 4.9 kernel Meltdown patched, 64bit</am>
   <ca>Default Debian 4.9 kernel Meltdown patched, 64bit</ca>
   <cs>Default Debian 4.9 kernel Meltdown patched, 64bit</cs>
   <de>Standard Debian 4.9 Kernel Meltdown gepatcht, 64bit</de>
   <el>Default Debian 4.9 kernel Meltdown patched, 64bit</el>
   <en>Default Debian 4.9 kernel Meltdown patched, 64bit</en>
   <es>Default Debian 4.9 kernel Meltdown patched, 64bit</es>
   <fi>Default Debian 4.9 kernel Meltdown patched, 64bit</fi>
   <fr>Noyau Debian 4.9 corrections Meltdown, 64bit</fr>
   <hi>Default Debian 4.9 kernel Meltdown patched, 64bit</hi>
   <hr>Default Debian 4.9 kernel Meltdown patched, 64bit</hr>
   <hu>Default Debian 4.9 kernel Meltdown patched, 64bit</hu>
   <it>Default Debian 4.9 kernel Meltdown patched, 64bit</it>
   <ja>Default Debian 4.9 kernel Meltdown patched, 64bit</ja>
   <kk>Default Debian 4.9 kernel Meltdown patched, 64bit</kk>
   <lt>Default Debian 4.9 kernel Meltdown patched, 64bit</lt>
   <nl>Default Debian 4.9 kernel Meltdown patched, 64bit</nl>
   <pl>Default Debian 4.9 kernel Meltdown patched, 64bit</pl>
   <pt_BR>Default Debian 4.9 kernel Meltdown patched, 64bit</pt_BR>
   <pt>Default Debian 4.9 kernel Meltdown patched, 64bit</pt>
   <ro>Default Debian 4.9 kernel Meltdown patched, 64bit</ro>
   <ru>Default Debian 4.9 kernel Meltdown patched, 64bit</ru>
   <sk>Default Debian 4.9 kernel Meltdown patched, 64bit</sk>
   <sv>Standard Debian 4.9 kärna Meltdown patched, 64bit</sv>
   <tr>Default Debian 4.9 kernel Meltdown patched, 64bit</tr>
   <uk>Default Debian 4.9 kernel Meltdown patched, 64bit</uk>
   <zh_TW>Default Debian 4.9 kernel Meltdown patched, 64bit</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-amd64
linux-headers-amd64
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-amd64
</postinstall>


<uninstall_package_names>
linux-image-amd64
linux-headers-amd64
</uninstall_package_names>
</app>
