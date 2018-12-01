<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Liquorix 32 bit no-pae
</name>

<description>
   <am>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</am>
   <ca>Nucli de Liquorix (sense PAE, darrer 4.x del dipòsit MX TEST)</ca>
   <cs>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</cs>
   <da>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</da>
   <de>Liquorix Kernel (kein PAE, neueste Version 4.x von MX TEST repo)</de>
   <el>Liquorix Kernel (χωρίς PAE, τελευταίες 4.x από το MX TEST repo)</el>
   <en>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</en>
   <es>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</es>
   <fi>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</fi>
   <fr>Noyau Liquorix (no PAE, dernier 4.x du dépôt de test MX)</fr>
   <hi>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</hi>
   <hr>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</hr>
   <hu>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</hu>
   <is>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</is>
   <it>Liquorix Kernel (no PAE, ultimo 4.x da MX TEST repo)</it>
   <ja>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</ja>
   <kk>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</kk>
   <lt>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</lt>
   <nl>Liquorix Kernel (geen PAE, laatste 4.x vanuit MX TEST pakketbron)</nl>
   <pl>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</pl>
   <pt_BR>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</pt_BR>
   <pt>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</pt>
   <ro>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</ro>
   <ru>Liquorix ядро (no-PAE, последнее 4.x из репозитория MX TEST)</ru>
   <sk>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</sk>
   <sq>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</sq>
   <sv>Liquorix Kärna (no PAE, senaste 4.x från MX TEST repo)</sv>
   <tr>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</tr>
   <uk>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</uk>
   <zh_TW>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://mxrepo.com/mx/testrepo/ stretch test">/etc/apt/sources.list.d/mxpitemp.list
apt-get update
</preinstall>

<install_package_names>
linux-image-liquorix-686
linux-headers-liquorix-686
broadcom-sta-dkms
ndiswrapper-dkms
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/mxpitemp.list
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-liquorix-686
apt-get -y remove linux-image-liquorix-686 linux-headers-liquorix-686
apt-get update

</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
