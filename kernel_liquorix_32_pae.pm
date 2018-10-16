<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Liquorix 32 bit pae
</name>

<description>
   <am>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</am>
   <ca>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</ca>
   <cs>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</cs>
   <de>Liquorix Kernel (PAE, neueste Version 4.x von MX TEST repo)</de>
   <el>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</el>
   <en>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</en>
   <es>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</es>
   <fi>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</fi>
   <fr>Noyau Liquorix (PAE, dernier 4.x du dépôt de test MX)</fr>
   <hi>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</hi>
   <hr>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</hr>
   <hu>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</hu>
   <it>Liquorix Kernel (PAE, ultimo 4.x da MX TEST repo)</it>
   <ja>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</ja>
   <kk>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</kk>
   <lt>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</lt>
   <nl>Liquorix Kernel (PAE, laatste 4.x vanuit MX TEST pakketbron)</nl>
   <pl>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</pl>
   <pt_BR>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</pt_BR>
   <pt>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</pt>
   <ro>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</ro>
   <ru>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</ru>
   <sk>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</sk>
   <sv>Liquorix Kärna (PAE, senaste 4.x från MX TEST repo)</sv>
   <tr>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</tr>
   <uk>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</uk>
   <zh_TW>Liquorix Kernel (PAE, latest 4.x from MX TEST repo)</zh_TW>
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
linux-image-liquorix-686-pae
linux-headers-liquorix-686-pae
broadcom-sta-dkms
ndiswrapper-dkms
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-liquorix-686-pae
rm -f /etc/apt/sources.list.d/mxpitemp.list
apt-get -y remove linux-image-liquorix-686-pae linux-headers-liquorix-686-pae
apt-get update
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
