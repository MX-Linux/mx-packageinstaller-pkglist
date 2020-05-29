<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Debian 5.6 64 bit (mx test)
</name>

<description>
   <am>Debian 5.6, 64 bit latest from MX ahs repo</am>
   <ar>Debian 5.6, 64 bit latest from MX ahs repo</ar>
   <bg>Debian 5.6, 64 bit latest from MX ahs repo</bg>
   <bn>Debian 5.6, 64 bit latest from MX ahs repo</bn>
   <ca>Debian 5.6, 64 bit, més recent del dipòsit MX ahs</ca>
   <cs>Debian 5.6, 64 bit latest from MX ahs repo</cs>
   <da>Debian 5.6, 64 bit latest from MX ahs repo</da>
   <de>Debian 5.6, 64 bit, der neueste im MX ahs Repo</de>
   <el>Debian 5.6, 64 bit πιο πρόσφατο από το MX ahs repo</el>
   <en>Debian 5.6, 64 bit latest from MX ahs repo</en>
   <es>Debian 5.6, 64 bit último desde MX ahs repo</es>
   <et>Debian 5.6, 64 bit latest from MX ahs repo</et>
   <eu>Debian 5.6, 64 bit latest from MX ahs repo</eu>
   <fa>Debian 5.6, 64 bit latest from MX ahs repo</fa>
   <fil_PH>Debian 5.6, 64 bit latest from MX ahs repo</fil_PH>
   <fi>Debian 5.6, 64 bit latest from MX ahs repo</fi>
   <fr>Debian 5.6, 64 bit latest from MX ahs repo</fr>
   <he_IL>Debian 5.6, 64 bit latest from MX ahs repo</he_IL>
   <hi>Debian 5.6, 64 bit latest from MX ahs repo</hi>
   <hr>Debian 5.6, 64 bit latest from MX ahs repo</hr>
   <hu>Debian 5.6, 64 bit latest from MX ahs repo</hu>
   <id>Debian 5.6, 64 bit latest from MX ahs repo</id>
   <is>Debian 5.6, 64 bit latest from MX ahs repo</is>
   <it>Debian 5.6, 64 bit ultimo dal repo MX ahs</it>
   <ja_JP>Debian 5.6, 64 bit latest from MX ahs repo</ja_JP>
   <ja>Debian 5.6, 64 bit latest from MX ahs repo</ja>
   <kk>Debian 5.6, 64 bit latest from MX ahs repo</kk>
   <ko>Debian 5.6, 64 bit latest from MX ahs repo</ko>
   <lt>Debian 5.6, 64 bit latest from MX ahs repo</lt>
   <mk>Debian 5.6, 64 bit latest from MX ahs repo</mk>
   <mr>Debian 5.6, 64 bit latest from MX ahs repo</mr>
   <nb>Debian 5.6, 64 bit latest from MX ahs repo</nb>
   <nl>Debian 5.6, 64 bit latest from MX ahs repo</nl>
   <pl>Debian 5.6, 64 bit latest from MX ahs repo</pl>
   <pt_BR>Debian 5.6, 64 bit latest from MX ahs repo</pt_BR>
   <pt>Debian 5.6, 64 bit versão mais recente do MX ahs repo</pt>
   <ro>Debian 5.6, 64 bit latest from MX ahs repo</ro>
   <ru>Debian 5.6 64 bit (актуальное из репозитория MX ahs)</ru>
   <sk>Debian 5.6, 64 bit latest from MX ahs repo</sk>
   <sl>Debian 5.6, 64 bitno, zadnje iz MX ahs repozitorija</sl>
   <sq>Debian 5.6, 64 bit latest from MX ahs repo</sq>
   <sr>Debian 5.6, 64 bit latest from MX ahs repo</sr>
   <sv>Debian 5.6, 64 bit senaste från MX ahs repo</sv>
   <tr>Debian 5.6, 64 bit latest from MX ahs repo</tr>
   <uk>Debian 5.6, 64 bit latest from MX ahs repo</uk>
   <vi>Debian 5.6, 64 bit latest from MX ahs repo</vi>
   <zh_CN>Debian 5.6, 64 bit latest from MX ahs repo</zh_CN>
   <zh_TW>Debian 5.6, 64 bit latest from MX ahs repo</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://mxrepo.com/mx/repo/ buster ahs">/etc/apt/sources.list.d/mxpitemp.list
apt-get update 
</preinstall>

<install_package_names>
linux-image-5.6.0-2-amd64-unsigned 
linux-headers-5.6.0-2-amd64
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/mxpitemp.list
rebuild_dkms_packages.sh linux-image-5.6.0-2-amd64-unsigned
apt-get update
</postinstall>


<uninstall_package_names>
linux-image-5.6.0-2-amd64-unsigned
linux-headers-5.6.0-2-amd64
</uninstall_package_names>
</app>
