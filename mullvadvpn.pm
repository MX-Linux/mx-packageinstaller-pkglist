<?xml version="1.0"?>
<app>

<category>
Network
</category>

<name>
Mullvad VPN
</name>

<description>
   <am>Mullvad VPN and sysVinit scripts</am>
   <ar>Mullvad VPN and sysVinit scripts</ar>
   <bg>Mullvad VPN and sysVinit scripts</bg>
   <ca>Mullvad VPN and sysVinit scripts</ca>
   <cs>Mullvad VPN and sysVinit scripts</cs>
   <da>Mullvad VPN and sysVinit scripts</da>
   <de>Mullvad VPN and sysVinit scripts</de>
   <el>Mullvad VPN and sysVinit scripts</el>
   <en>Mullvad VPN and sysVinit scripts</en>
   <es>Mullvad VPN and sysVinit scripts</es>
   <et>Mullvad VPN and sysVinit scripts</et>
   <eu>Mullvad VPN and sysVinit scripts</eu>
   <fa>Mullvad VPN and sysVinit scripts</fa>
   <fi>Mullvad VPN and sysVinit scripts</fi>
   <fr>Mullvad VPN and sysVinit scripts</fr>
   <he_IL>Mullvad VPN and sysVinit scripts</he_IL>
   <hi>Mullvad VPN and sysVinit scripts</hi>
   <hr>Mullvad VPN and sysVinit scripts</hr>
   <hu>Mullvad VPN and sysVinit scripts</hu>
   <id>Mullvad VPN and sysVinit scripts</id>
   <is>Mullvad VPN and sysVinit scripts</is>
   <it>Mullvad VPN and sysVinit scriptsv</it>
   <ja_JP>Mullvad VPN and sysVinit scripts</ja_JP>
   <ja>Mullvad VPN and sysVinit scripts</ja>
   <kk>Mullvad VPN and sysVinit scripts</kk>
   <ko>Mullvad VPN and sysVinit scripts</ko>
   <lt>Mullvad VPN and sysVinit scripts</lt>
   <mk>Mullvad VPN and sysVinit scripts</mk>
   <nb>Mullvad VPN and sysVinit scripts</nb>
   <nl>Mullvad VPN and sysVinit scripts</nl>
   <pl>Mullvad VPN and sysVinit scripts</pl>
   <pt_BR>Mullvad VPN and sysVinit scripts</pt_BR>
   <pt>Mullvad VPN and sysVinit scripts</pt>
   <ro>Mullvad VPN and sysVinit scripts</ro>
   <ru>Mullvad VPN and sysVinit scripts</ru>
   <sk>Mullvad VPN and sysVinit scripts</sk>
   <sl>Mullvad VPN and sysVinit scripts</sl>
   <sq>Mullvad VPN and sysVinit scripts</sq>
   <sr>Mullvad VPN and sysVinit scripts</sr>
   <sv>Mullvad VPN and sysVinit scripts</sv>
   <tr>Mullvad VPN and sysVinit scripts</tr>
   <uk>Mullvad VPN and sysVinit scripts</uk>
   <zh_CN>Mullvad VPN and sysVinit scripts</zh_CN>
   <zh_TW>Mullvad VPN and sysVinit scripts</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
</preinstall>

<install_package_names>
mullvadvpn-sysvinit-compat
mullvadvpn-downloader-installer
</install_package_names>

<postinstall>
# run Mullvad installer 
INSTALL=/usr/share/mullvad-downloader-installer/install_mullvadvpn.sh
if [ -x $INSTALL ]; then
   /usr/share/mullvad-downloader-installer/install_mullvadvpn.sh
fi

</postinstall>

<uninstall_package_names>
mullvadvpn-sysvinit-compat
mullvadvpn-downloader-installer
mullvad-vpn
</uninstall_package_names>
</app>
