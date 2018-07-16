<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Liquorix 64 bit
</name>

<description>
   <am>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</am>
   <ca>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</ca>
   <cs>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</cs>
   <de>Liquorix Kernel Meltdown gepatcht, 64 bit latest 4.x von MX TEST repo</de>
   <el>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</el>
   <en>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</en>
   <es>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</es>
   <fi>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</fi>
   <fr>Noyau Liquorix corrections Meltdown, 64 bit dernier 4.x du dépôt de test MX)</fr>
   <hi>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</hi>
   <hr>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</hr>
   <hu>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</hu>
   <it>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</it>
   <ja>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</ja>
   <kk>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</kk>
   <lt>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</lt>
   <nl>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</nl>
   <pl>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</pl>
   <pt_BR>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</pt_BR>
   <pt>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</pt>
   <ro>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</ro>
   <ru>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</ru>
   <sk>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</sk>
   <sv>Liquorix kärna Meltdown patched, 64 bit senaste4.x från MX TEST repo</sv>
   <tr>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</tr>
   <uk>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</uk>
   <zh_TW>Liquorix kernel Meltdown patched, 64 bit latest 4.x from MX TEST repo</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://mxrepo.com/mx/testrepo/ stretch test">/etc/apt/sources.list.d/mxpitemp.list
apt-get update
</preinstall>

<install_package_names>
linux-image-liquorix-amd64
linux-headers-liquorix-amd64
broadcom-sta-dkms
ndiswrapper-dkms
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/mxpitemp.list
apt-get -y remove linux-image-liquorix-amd64 linux-headers-liquorix-amd64
apt-get update
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
