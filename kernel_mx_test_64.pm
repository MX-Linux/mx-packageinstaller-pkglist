<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Debian 5.4 64 bit (mx test)
</name>

<description>
   <am>Debian 5.4, 64 bit latest from MX TEST repo</am>
   <ar>Debian 5.4, 64 bit latest from MX TEST repo</ar>
   <bg>Debian 5.4, 64 bit latest from MX TEST repo</bg>
   <bn>Debian 5.4, 64 bit latest from MX TEST repo</bn>
   <ca>Debian 5.4, 64 bit, més recent del dipòsit MX TEST</ca>
   <cs>Debian 5.4, 64 bit latest from MX TEST repo</cs>
   <da>Debian 5.4, 64 bit latest from MX TEST repo</da>
   <de>Debian 5.4, 64 bit, der neueste im MX TEST Repo</de>
   <el>Debian 5.4, 64 bit πιο πρόσφατο από το MX TEST repo</el>
   <en>Debian 5.4, 64 bit latest from MX TEST repo</en>
   <es>Debian 5.4, 64 bit último desde MX TEST repo</es>
   <et>Debian 5.4, 64 bit latest from MX TEST repo</et>
   <eu>Debian 5.4, 64 bit latest from MX TEST repo</eu>
   <fa>Debian 5.4, 64 bit latest from MX TEST repo</fa>
   <fil_PH>Debian 5.4, 64 bit latest from MX TEST repo</fil_PH>
   <fi>Debian 5.4, 64 bit latest from MX TEST repo</fi>
   <fr>Debian 5.4, 64 bit latest from MX TEST repo</fr>
   <he_IL>Debian 5.4, 64 bit latest from MX TEST repo</he_IL>
   <hi>Debian 5.4, 64 bit latest from MX TEST repo</hi>
   <hr>Debian 5.4, 64 bit latest from MX TEST repo</hr>
   <hu>Debian 5.4, 64 bit latest from MX TEST repo</hu>
   <id>Debian 5.4, 64 bit latest from MX TEST repo</id>
   <is>Debian 5.4, 64 bit latest from MX TEST repo</is>
   <it>Debian 5.4, 64 bit ultimo dal repo MX TEST</it>
   <ja_JP>Debian 5.4, 64 bit latest from MX TEST repo</ja_JP>
   <ja>Debian 5.4, 64 bit latest from MX TEST repo</ja>
   <kk>Debian 5.4, 64 bit latest from MX TEST repo</kk>
   <ko>Debian 5.4, 64 bit latest from MX TEST repo</ko>
   <lt>Debian 5.4, 64 bit latest from MX TEST repo</lt>
   <mk>Debian 5.4, 64 bit latest from MX TEST repo</mk>
   <mr>Debian 5.4, 64 bit latest from MX TEST repo</mr>
   <nb>Debian 5.4, 64 bit latest from MX TEST repo</nb>
   <nl>Debian 5.4, 64 bit latest from MX TEST repo</nl>
   <pl>Debian 5.4, 64 bit latest from MX TEST repo</pl>
   <pt_BR>Debian 5.4, 64 bit latest from MX TEST repo</pt_BR>
   <pt>Debian 5.4, 64 bit versão mais recente do MX TEST repo</pt>
   <ro>Debian 5.4, 64 bit latest from MX TEST repo</ro>
   <ru>Debian 5.4 64 bit (актуальное из репозитория MX TEST)</ru>
   <sk>Debian 5.4, 64 bit latest from MX TEST repo</sk>
   <sl>Debian 5.4, 64 bitno, zadnje iz MX TEST repozitorija</sl>
   <sq>Debian 5.4, 64 bit latest from MX TEST repo</sq>
   <sr>Debian 5.4, 64 bit latest from MX TEST repo</sr>
   <sv>Debian 5.4, 64 bit senaste från MX TEST repo</sv>
   <tr>Debian 5.4, 64 bit latest from MX TEST repo</tr>
   <uk>Debian 5.4, 64 bit latest from MX TEST repo</uk>
   <vi>Debian 5.4, 64 bit latest from MX TEST repo</vi>
   <zh_CN>Debian 5.4, 64 bit latest from MX TEST repo</zh_CN>
   <zh_TW>Debian 5.4, 64 bit latest from MX TEST repo</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://mxrepo.com/mx/testrepo/ buster test">/etc/apt/sources.list.d/mxpitemp.list
apt-get update
</preinstall>

<install_package_names>
linux-image-5.4.0-3-amd64-unsigned
linux-headers-5.4.0-3-amd64
broadcom-sta-dkms
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/mxpitemp.list
rebuild_dkms_packages.sh linux-image-5.4.0-3-amd64-unsigned
apt-get update
</postinstall>


<uninstall_package_names>
linux-image-5.4.0-3-amd64-unsigned
linux-headers-5.4.0-3-amd64
</uninstall_package_names>
</app>
