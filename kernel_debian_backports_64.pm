<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Debian-Backports 64 bit
</name>

<description>
   <am>Liquorix Kernel (no PAE, latest from MX TEST repo)</am>
   <ar>Liquorix Kernel (no PAE, latest from MX TEST repo)</ar>
   <bg>Liquorix Kernel (no PAE, latest from MX TEST repo)</bg>
   <ca>Kernel Liquorix (no PAE, recent del dipòsit MX TEST)</ca>
   <cs>Liquorix Kernel (no PAE, latest from MX TEST repo)</cs>
   <da>Liquorix Kernel (no PAE, latest from MX TEST repo)</da>
   <de>Liquorix Kernel (no PAE, der neueste im MX TEST Repo)</de>
   <el>Liquorix Kernel (no PAE, latest from MX TEST repo)</el>
   <en>Liquorix Kernel (no PAE, latest from MX TEST repo)</en>
   <es>Liquorix Kernel (no PAE, último desde MX TEST repo)</es>
   <et>Liquorix Kernel (no PAE, latest from MX TEST repo)</et>
   <eu>Liquorix Kernel (no PAE, latest from MX TEST repo)</eu>
   <fa>Liquorix Kernel (no PAE, latest from MX TEST repo)</fa>
   <fil_PH>Liquorix Kernel (no PAE, latest from MX TEST repo)</fil_PH>
   <fi>Liquorix Kernel (no PAE, latest from MX TEST repo)</fi>
   <fr>Liquorix Kernel (no PAE, latest from MX TEST repo)</fr>
   <he_IL>Liquorix Kernel (no PAE, latest from MX TEST repo)</he_IL>
   <hi>Liquorix Kernel (no PAE, latest from MX TEST repo)</hi>
   <hr>Liquorix Kernel (no PAE, latest from MX TEST repo)</hr>
   <hu>Liquorix Kernel (no PAE, latest from MX TEST repo)</hu>
   <id>Liquorix Kernel (no PAE, latest from MX TEST repo)</id>
   <is>Liquorix Kernel (no PAE, latest from MX TEST repo)</is>
   <it>Liquorix Kernel (no PAE, latest from MX TEST repo)</it>
   <ja_JP>Liquorix Kernel (no PAE, latest from MX TEST repo)</ja_JP>
   <ja>Liquorix Kernel (no PAE, latest from MX TEST repo)</ja>
   <kk>Liquorix Kernel (no PAE, latest from MX TEST repo)</kk>
   <ko>Liquorix Kernel (no PAE, latest from MX TEST repo)</ko>
   <lt>Liquorix Kernel (no PAE, latest from MX TEST repo)</lt>
   <mk>Liquorix Kernel (no PAE, latest from MX TEST repo)</mk>
   <mr>Liquorix Kernel (no PAE, latest from MX TEST repo)</mr>
   <nb>Liquorix Kernel (no PAE, latest from MX TEST repo)</nb>
   <nl>Liquorix Kernel (no PAE, latest from MX TEST repo)</nl>
   <pl>Liquorix Kernel (no PAE, latest from MX TEST repo)</pl>
   <pt_BR>Liquorix Kernel (no PAE, latest from MX TEST repo)</pt_BR>
   <pt>Núcleo (kernel) Liquorix (no PAE, versão mais recente do MX TEST repo)</pt>
   <ro>Liquorix Kernel (no PAE, latest from MX TEST repo)</ro>
   <ru>Liquorix ядро, no-PAE (последняя версия из репозитория MX TEST)</ru>
   <sk>Liquorix Kernel (no PAE, latest from MX TEST repo)</sk>
   <sl>Liquorix jedro (brez PAE, zadnj iz MX TEST repozitorija)</sl>
   <sq>Liquorix Kernel (no PAE, latest from MX TEST repo)</sq>
   <sr>Liquorix Kernel (no PAE, latest from MX TEST repo)</sr>
   <sv>Liquorix Kärna (no PAE, senaste från MX TEST repo)</sv>
   <tr>Liquorix Kernel (no PAE, latest from MX TEST repo)</tr>
   <uk>Liquorix Kernel (no PAE, latest from MX TEST repo)</uk>
   <zh_CN>Liquorix Kernel (no PAE, latest from MX TEST repo)</zh_CN>
   <zh_TW>Liquorix Kernel (no PAE, latest from MX TEST repo)</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://http.debian.net/debian buster-backports main">/etc/apt/sources.list.d/mxpitemp.list
apt-get update
apt-get install -t buster-backports linux-image-amd64 linux-headers-amd64
</preinstall>

<install_package_names>
linux-image-amd64
linux-headers-amd64
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/mxpitemp.list
rebuild_dkms_packages.sh linux-image-amd64
apt-get -y remove linux-image-amd64 linux-headers-amd64
apt-get update
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
