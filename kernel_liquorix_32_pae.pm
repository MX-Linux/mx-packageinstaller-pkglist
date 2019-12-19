<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Liquorix 32 bit pae
</name>

<description>
   <am>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</am>
   <ar>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</ar>
   <bg>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</bg>
   <ca>Kernel Liquorix esmenat per Meltdown, 64 bit, més recent del dipòsit MX TEST</ca>
   <cs>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</cs>
   <da>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</da>
   <de>Liquorix Kernel Meltdown gepatcht, 64 bit, der neueste im MX TEST Repo</de>
   <el>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</el>
   <en>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</en>
   <es>Liquorix kernel Meltdown parcheado, 64 bit último desde MX TEST repo</es>
   <et>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</et>
   <eu>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</eu>
   <fa>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</fa>
   <fil_PH>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</fil_PH>
   <fi>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</fi>
   <fr>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</fr>
   <he_IL>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</he_IL>
   <hi>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</hi>
   <hr>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</hr>
   <hu>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</hu>
   <id>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</id>
   <is>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</is>
   <it>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</it>
   <ja_JP>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</ja_JP>
   <ja>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</ja>
   <kk>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</kk>
   <ko>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</ko>
   <lt>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</lt>
   <mk>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</mk>
   <mr>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</mr>
   <nb>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</nb>
   <nl>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</nl>
   <pl>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</pl>
   <pt_BR>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</pt_BR>
   <pt>Núcleo (kernel) Liquorix com correcção para a falha Meltdown, 64 bit versão mais recente do MX TEST repo</pt>
   <ro>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</ro>
   <ru>Liquorix ядро с патчем от Meltdown 64 bit (актуальное из репозитория MX TEST)</ru>
   <sk>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</sk>
   <sl>Liquorix Meltdown jedro - zakrpano, 64 bitno, zadnje iz MX TEST repozitorija</sl>
   <sq>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</sq>
   <sr>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</sr>
   <sv>Liquorix kärna Meltdown fixad, 64 bit senaste från MX TEST repo</sv>
   <tr>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</tr>
   <uk>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</uk>
   <zh_CN>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</zh_CN>
   <zh_TW>Liquorix kernel Meltdown patched, 64 bit latest from MX TEST repo</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://mxrepo.com/mx/testrepo/ buster test">/etc/apt/sources.list.d/mxpitemp.list
apt-get update
</preinstall>

<install_package_names>
linux-image-liquorix-686-pae
linux-headers-liquorix-686-pae
broadcom-sta-dkms
ndiswrapper-dkms
</install_package_names>


<postinstall>
rebuild_dkms_packages.sh linux-image-liquorix-686-pae
rm -f /etc/apt/sources.list.d/mxpitemp.list
apt-get -y remove linux-image-liquorix-686-pae linux-headers-liquorix-686-pae
apt-get update
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
