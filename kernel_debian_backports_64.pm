<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Debian-Backports 64 bit
</name>

<description>
   <am>Debian Backports kernel Meltdown patched, 64 bit</am>
   <ca>Debian Backports kernel Meltdown patched, 64 bit</ca>
   <cs>Debian Backports kernel Meltdown patched, 64 bit</cs>
   <de>Debian Backports-Kernel Meltdown gepatcht, 64 Bit</de>
   <el>Debian Backports kernel Meltdown patched, 64 bit</el>
   <en>Debian Backports kernel Meltdown patched, 64 bit</en>
   <es>Debian Backports kernel Meltdown patched, 64 bit</es>
   <fi>Debian Backports kernel Meltdown patched, 64 bit</fi>
   <fr>Noyau Debian Backports corrections Meltdown, 64 bit</fr>
   <hi>Debian Backports kernel Meltdown patched, 64 bit</hi>
   <hr>Debian Backports kernel Meltdown patched, 64 bit</hr>
   <hu>Debian Backports kernel Meltdown patched, 64 bit</hu>
   <it>Debian Backports kernel Meltdown patched, 64 bit</it>
   <ja>Debian Backports kernel Meltdown patched, 64 bit</ja>
   <kk>Debian Backports kernel Meltdown patched, 64 bit</kk>
   <lt>Debian Backports kernel Meltdown patched, 64 bit</lt>
   <nl>Debian Backports kernel Meltdown patched, 64 bit</nl>
   <pl>Debian Backports kernel Meltdown patched, 64 bit</pl>
   <pt_BR>Debian Backports kernel Meltdown patched, 64 bit</pt_BR>
   <pt>Debian Backports kernel Meltdown patched, 64 bit</pt>
   <ro>Debian Backports kernel Meltdown patched, 64 bit</ro>
   <ru>Debian Backports kernel Meltdown patched, 64 bit</ru>
   <sk>Debian Backports kernel Meltdown patched, 64 bit</sk>
   <sv>Debian Backports kärna Meltdown patched, 64 bit</sv>
   <tr>Debian Backports kernel Meltdown patched, 64 bit</tr>
   <uk>Debian Backports kernel Meltdown patched, 64 bit</uk>
   <zh_TW>Debian Backports kernel Meltdown patched, 64 bit</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://http.debian.net/debian stretch-backports main">/etc/apt/sources.list.d/mxpitemp.list
apt-get update
apt-get install -t stretch-backports linux-image-amd64 linux-headers-amd64
</preinstall>

<install_package_names>
linux-image-amd64
linux-headers-amd64
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/mxpitemp.list
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-amd64
apt-get -y remove linux-image-amd64 linux-headers-amd64
apt-get update
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
