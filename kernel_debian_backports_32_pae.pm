<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Debian-Backports 32 bit PAE
</name>

<description>
   <am>Debian Backports Kernel (32 bit PAE)</am>
   <ar>Debian Backports Kernel (32 bit PAE)</ar>
   <bg>Debian Backports Kernel (32 bit PAE)</bg>
   <ca>Nucli de Debian Backports (32 bit amb PAE)</ca>
   <cs>Debian Backports Kernel (32 bit PAE)</cs>
   <da>Debian backports kerne (32 bit PAE)</da>
   <de>Debian-Backports-Kernel (32-Bit-PAE)</de>
   <el>Debian Backports Kernel (32 bit PAE)</el>
   <en>Debian Backports Kernel (32 bit PAE)</en>
   <es>Debian Backports Kernel (32 bit PAE)</es>
   <et>Debian Backports Kernel (32 bit PAE)</et>
   <eu>Debian Backports Kernel (32 bit PAE)</eu>
   <fa>Debian Backports Kernel (32 bit PAE)</fa>
   <fi>Debian Backports Kernel (32 bit PAE)</fi>
   <fr>Noyau Debian Backports (32 bit PAE)</fr>
   <he_IL>Debian Backports Kernel (32 bit PAE)</he_IL>
   <hi>Debian Backports Kernel (32 bit PAE)</hi>
   <hr>Debian Backports Kernel (32 bit PAE)</hr>
   <hu>Debian Backports Kernel (32 bit PAE)</hu>
   <id>Debian Backports Kernel (32 bit PAE)</id>
   <is>Debian Backports Kernel (32 bit PAE)</is>
   <it>Debian Backports Kernel (32 bit PAE)</it>
   <ja_JP>Debian Backports Kernel (32 bit PAE)</ja_JP>
   <ja>Debian Backports Kernel (32 bit PAE)</ja>
   <kk>Debian Backports Kernel (32 bit PAE)</kk>
   <ko>Debian Backports Kernel (32 bit PAE)</ko>
   <lt>Debian Backports Kernel (32 bit PAE)</lt>
   <mk>Debian Backports Kernel (32 bit PAE)</mk>
   <nb>Debian Backports Kernel (32 bit PAE)</nb>
   <nl>Debian Backports Kernel (32 bit PAE)</nl>
   <pl>Debian Backports Kernel (32 bit PAE)</pl>
   <pt_BR>Debian Backports Kernel (32 bit PAE)</pt_BR>
   <pt>Núcleo do Debian Backports (32 bit PAE)</pt>
   <ro>Debian Backports Kernel (32 bit PAE)</ro>
   <ru>Debian ядро Backports, 32 bit PAE</ru>
   <sk>Debian Backports Kernel (32 bit PAE)</sk>
   <sl>Debian Backports Kernel (32 bit PAE)</sl>
   <sq>Debian Backports Kernel (32 bit PAE)</sq>
   <sr>Debian Backports Kernel (32 bit PAE)</sr>
   <sv>Debian Backports Kärna (32 bit PAE)</sv>
   <tr>Debian Backports Kernel (32 bit PAE)</tr>
   <uk>Debian Backports Kernel (32 bit PAE)</uk>
   <zh_CN>Debian Backports Kernel (32 bit PAE)</zh_CN>
   <zh_TW>Debian Backports Kernel (32 bit PAE)</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://http.debian.net/debian buster-backports main">/etc/apt/sources.list.d/mxpitemp.list
apt-get update
apt-get install -t buster-backports
</preinstall>

<install_package_names>
linux-image-686-pae
linux-headers-686-pae
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/mxpitemp.list
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-686-pae
apt-get -y remove linux-image-686-pae linux-headers-686-pae
apt-get update
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
