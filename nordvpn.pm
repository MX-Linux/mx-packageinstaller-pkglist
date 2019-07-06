<?xml version="1.0"?>
<app>

<category>
Network
</category>

<name>
NordVPN - VPN
</name>

<description>
   <am>NordVPN - NordVPN client and sysVinit scripts</am>
   <ar>NordVPN - NordVPN client and sysVinit scripts</ar>
   <bg>NordVPN - NordVPN client and sysVinit scripts</bg>
   <ca>NordVPN - NordVPN client and sysVinit scripts</ca>
   <cs>NordVPN - NordVPN client and sysVinit scripts</cs>
   <da>NordVPN - NordVPN client and sysVinit scripts</da>
   <de>NordVPN - NordVPN client and sysVinit scripts</de>
   <el>NordVPN - NordVPN client and sysVinit scripts</el>
   <en>NordVPN - NordVPN client and sysVinit scripts</en>
   <es>NordVPN - NordVPN client and sysVinit scripts</es>
   <et>NordVPN - NordVPN client and sysVinit scripts</et>
   <eu>NordVPN - NordVPN client and sysVinit scripts</eu>
   <fa>NordVPN - NordVPN client and sysVinit scripts</fa>
   <fi>NordVPN - NordVPN client and sysVinit scripts</fi>
   <fr>NordVPN - NordVPN client and sysVinit scripts</fr>
   <he_IL>NordVPN - NordVPN client and sysVinit scripts</he_IL>
   <hi>NordVPN - NordVPN client and sysVinit scripts</hi>
   <hr>NordVPN - NordVPN client and sysVinit scripts</hr>
   <hu>NordVPN - NordVPN client and sysVinit scripts</hu>
   <id>NordVPN - NordVPN client and sysVinit scripts</id>
   <is>NordVPN - NordVPN client and sysVinit scripts</is>
   <it>NordVPN - NordVPN client and sysVinit scriptsv</it>
   <ja_JP>NordVPN - NordVPN client and sysVinit scripts</ja_JP>
   <ja>NordVPN - NordVPN client and sysVinit scripts</ja>
   <kk>NordVPN - NordVPN client and sysVinit scripts</kk>
   <ko>NordVPN - NordVPN client and sysVinit scripts</ko>
   <lt>NordVPN - NordVPN client and sysVinit scripts</lt>
   <mk>NordVPN - NordVPN client and sysVinit scripts</mk>
   <nb>NordVPN - NordVPN client and sysVinit scripts</nb>
   <nl>NordVPN - NordVPN client and sysVinit scripts</nl>
   <pl>NordVPN - NordVPN client and sysVinit scripts</pl>
   <pt_BR>NordVPN - NordVPN client and sysVinit scripts</pt_BR>
   <pt>NordVPN - NordVPN client and sysVinit scripts</pt>
   <ro>NordVPN - NordVPN client and sysVinit scripts</ro>
   <ru>NordVPN - NordVPN client and sysVinit scripts</ru>
   <sk>NordVPN - NordVPN client and sysVinit scripts</sk>
   <sl>NordVPN - NordVPN client and sysVinit scripts</sl>
   <sq>NordVPN - NordVPN client and sysVinit scripts</sq>
   <sr>NordVPN - NordVPN client and sysVinit scripts</sr>
   <sv>NordVPN - NordVPN client and sysVinit scripts</sv>
   <tr>NordVPN - NordVPN client and sysVinit scripts</tr>
   <uk>NordVPN - NordVPN client and sysVinit scripts</uk>
   <zh_CN>NordVPN - NordVPN client and sysVinit scripts</zh_CN>
   <zh_TW>NordVPN - NordVPN client and sysVinit scripts</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>
wget https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb -O /tmp/nordvpn-release.deb
dpkg -i /tmp/nordvpn-release.deb
rm /tmp/nordvpn-release.deb
apt-get update
apt-get install nordvpn
</preinstall>

<install_package_names>
nordvpn-sysvinit-compat
</install_package_names>

<postinstall>

</postinstall>

<uninstall_package_names>
nordvpn
nordvpn-sysvinit-compat
</uninstall_package_names>
</app>