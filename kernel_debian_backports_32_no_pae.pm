<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Debian-Backports 32 bit No PAE
</name>

<description>
   <am>Debian Backports Kernel (32 bit No PAE)</am>
   <ca>Nucli de Debian Backports (32 bit sense PAE)</ca>
   <cs>Debian Backports Kernel (32 bit No PAE)</cs>
   <de>Debian Backports Kernel (32 Bit ohne PAE)</de>
   <el>Debian Backports Kernel (32 bit No PAE)</el>
   <en>Debian Backports Kernel (32 bit No PAE)</en>
   <es>Debian Backports Kernel (32 bit No PAE)</es>
   <fi>Debian Backports Kernel (32 bit No PAE)</fi>
   <fr>Noyau Debian Backports (32 bit No PAE)</fr>
   <hi>Debian Backports Kernel (32 bit No PAE)</hi>
   <hr>Debian Backports Kernel (32 bit No PAE)</hr>
   <hu>Debian Backports Kernel (32 bit No PAE)</hu>
   <it>Debian Backports Kernel (32 bit No PAE)</it>
   <ja>Debian Backports Kernel (32 bit No PAE)</ja>
   <kk>Debian Backports Kernel (32 bit No PAE)</kk>
   <lt>Debian Backports Kernel (32 bit No PAE)</lt>
   <nl>Debian Backports Kernel (32 bit Geen PAE)</nl>
   <pl>Debian Backports Kernel (32 bit No PAE)</pl>
   <pt_BR>Debian Backports Kernel (32 bit No PAE)</pt_BR>
   <pt>Debian Backports Kernel (32 bit No PAE)</pt>
   <ro>Debian Backports Kernel (32 bit No PAE)</ro>
   <ru>Debian Backports Kernel (32 bit No PAE)</ru>
   <sk>Debian Backports Kernel (32 bit No PAE)</sk>
   <sv>Debian Backports Kärna (32 bit No PAE)</sv>
   <tr>Debian Backports Kernel (32 bit No PAE)</tr>
   <uk>Debian Backports Kernel (32 bit No PAE)</uk>
   <zh_TW>Debian Backports Kernel (32 bit No PAE)</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://http.debian.net/debian stretch-backports main">/etc/apt/sources.list.d/mxpitemp.list
apt-get update
apt-get install -t stretch-backports
</preinstall>

<install_package_names>
linux-image-686
linux-headers-686
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/mxpitemp.list
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-686
apt-get -y remove linux-image-686 linux-headers-686
apt-get update
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
