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
   <ca>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</ca>
   <cs>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</cs>
   <de>Liquorix Kernel (kein PAE, neueste Version 4.x von MX TEST repo)</de>
   <el>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</el>
   <en>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</en>
   <es>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</es>
   <fi>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</fi>
   <fr>Noyau Liquorix (no PAE, dernier 4.x du dépôt de test MX)</fr>
   <hi>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</hi>
   <hr>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</hr>
   <hu>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</hu>
   <it>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</it>
   <ja>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</ja>
   <kk>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</kk>
   <lt>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</lt>
   <nl>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</nl>
   <pl>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</pl>
   <pt_BR>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</pt_BR>
   <pt>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</pt>
   <ro>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</ro>
   <ru>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</ru>
   <sk>Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)</sk>
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
apt-get -y remove linux-image-liquorix-686 linux-headers-liquorix-686
apt-get update
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
