<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
5.6.4 64 bit (mx test)
</name>

<description>
   <am>5.6.4, 64 bit latest from MX TEST repo</am>
   <ar>5.6.4, 64 bit latest from MX TEST repo</ar>
   <bg>5.6.4, 64 bit latest from MX TEST repo</bg>
   <bn>5.6.4, 64 bit latest from MX TEST repo</bn>
   <ca>5.6.4, 64 bit, més recent del dipòsit MX TEST</ca>
   <cs>5.6.4, 64 bit latest from MX TEST repo</cs>
   <da>5.6.4, 64 bit latest from MX TEST repo</da>
   <de>5.6.4, 64 bit, der neueste im MX TEST Repo</de>
   <el>5.6.4, 64 bit πιο πρόσφατο από το MX TEST repo</el>
   <en>5.6.4, 64 bit latest from MX TEST repo</en>
   <es>5.6.4, 64 bit último desde MX TEST repo</es>
   <et>5.6.4, 64 bit latest from MX TEST repo</et>
   <eu>5.6.4, 64 bit latest from MX TEST repo</eu>
   <fa>5.6.4, 64 bit latest from MX TEST repo</fa>
   <fil_PH>5.6.4, 64 bit latest from MX TEST repo</fil_PH>
   <fi>5.6.4, 64 bit latest from MX TEST repo</fi>
   <fr>5.6.4, 64 bit latest from MX TEST repo</fr>
   <he_IL>5.6.4, 64 bit latest from MX TEST repo</he_IL>
   <hi> 5.6.4, 64 bit latest from MX TEST repo</hi>
   <hr> 5.6.4, 64 bit latest from MX TEST repo</hr>
   <hu> 5.6.4, 64 bit latest from MX TEST repo</hu>
   <id> 5.6.4, 64 bit latest from MX TEST repo</id>
   <is> 5.6.4, 64 bit latest from MX TEST repo</is>
   <it> 5.6.4, 64 bit ultimo dal repo MX TEST</it>
   <ja_JP> 5.6.4, 64 bit latest from MX TEST repo</ja_JP>
   <ja> 5.6.4, 64 bit latest from MX TEST repo</ja>
   <kk> 5.6.4, 64 bit latest from MX TEST repo</kk>
   <ko> 5.6.4, 64 bit latest from MX TEST repo</ko>
   <lt> 5.6.4, 64 bit latest from MX TEST repo</lt>
   <mk> 5.6.4, 64 bit latest from MX TEST repo</mk>
   <mr> 5.6.4, 64 bit latest from MX TEST repo</mr>
   <nb> 5.6.4, 64 bit latest from MX TEST repo</nb>
   <nl> 5.6.4, 64 bit latest from MX TEST repo</nl>
   <pl> 5.6.4, 64 bit latest from MX TEST repo</pl>
   <pt_BR> 5.6.4, 64 bit latest from MX TEST repo</pt_BR>
   <pt> 5.6.4, 64 bit versão mais recente do MX TEST repo</pt>
   <ro> 5.6.4, 64 bit latest from MX TEST repo</ro>
   <ru> 5.6.4 64 bit (актуальное из репозитория MX TEST)</ru>
   <sk> 5.6.4, 64 bit latest from MX TEST repo</sk>
   <sl> 5.6.4, 64 bitno, zadnje iz MX TEST repozitorija</sl>
   <sq> 5.6.4, 64 bit latest from MX TEST repo</sq>
   <sr> 5.6.4, 64 bit latest from MX TEST repo</sr>
   <sv> 5.6.4, 64 bit senaste från MX TEST repo</sv>
   <tr> 5.6.4, 64 bit latest from MX TEST repo</tr>
   <uk> 5.6.4, 64 bit latest from MX TEST repo</uk>
   <vi> 5.6.4, 64 bit latest from MX TEST repo</vi>
   <zh_CN> 5.6.4, 64 bit latest from MX TEST repo</zh_CN>
   <zh_TW> 5.6.4, 64 bit latest from MX TEST repo</zh_TW>
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
linux-image-5.6.0-trunk-amd64-unsigned
linux-headers-5.6.0-trunk-amd64
broadcom-sta-dkms
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/mxpitemp.list
rebuild_dkms_packages.sh linux-image-5.6.0-trunk-amd64-unsigned
apt-get update
</postinstall>


<uninstall_package_names>
linux-image-5.6.0-trunk-amd64-unsigned
linux-headers-5.6.0-trunk-amd64
</uninstall_package_names>
</app>
