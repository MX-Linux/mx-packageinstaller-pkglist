<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Liquorix 64 bit
</name>

<description>
   <am>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</am>
   <ar>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</ar>
   <bg>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</bg>
   <ca>Kernel Liquorix amb pegats per Meltdown, 64 bit darrer del dipòsit MX TEST</ca>
   <cs>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</cs>
   <da>Liquorix-kerne meltdown-rettelse, 64 bit seneste fra MX TEST-softwarekilde</da>
   <de>Liquorix Kernel Meltdown gepatcht, 64 bit latest von MX TEST repo</de>
   <el>Liquorix πυρήνα Meltdown patched, 64 bit πιο πρόσφατο από το MX TEST repo</el>
   <en>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</en>
   <es>Kernel Liquorix con parche Meltdown, 64 bit último del repositorio MX TEST</es>
   <et>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</et>
   <eu>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</eu>
   <fa>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</fa>
   <fi>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</fi>
   <fr>Noyau Liquorix correctifs Meltdown, 64 bit dernier ( du dépôt de test MX)</fr>
   <he_IL>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</he_IL>
   <hi>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</hi>
   <hr>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</hr>
   <hu>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</hu>
   <id>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</id>
   <is>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</is>
   <it>Liquorix kernel con la patch per Meltdown, 64 bit ultimo dal repo di  MX TEST</it>
   <ja_JP>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</ja_JP>
   <ja>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</ja>
   <kk>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</kk>
   <ko>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</ko>
   <lt>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</lt>
   <mk>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</mk>
   <mr>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</mr>
   <nb>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</nb>
   <nl>Liquorix kernel Meltdown patched, 64 bit laatste vanuit MX TEST pakketbron</nl>
   <pl>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</pl>
   <pt_BR>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</pt_BR>
   <pt>Núcleo Liquorix com correcção para a falha Meltdown, 64 bit; versão  mais recente no repositório MX TEST</pt>
   <ro>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</ro>
   <ru>Liquorix ядро с патчем от Meltdown, 64 bit последнее из репозитория MX TEST</ru>
   <sk>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</sk>
   <sl>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</sl>
   <sq>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</sq>
   <sr>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</sr>
   <sv>Liquorix kärna Meltdown patched, 64 bit senaste från MX TEST repo</sv>
   <tr>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</tr>
   <uk>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</uk>
   <zh_CN>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</zh_CN>
   <zh_TW>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</zh_TW>
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
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-liquorix-amd64
apt-get -y remove linux-image-liquorix-amd64 linux-headers-liquorix-amd64
apt-get update
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
