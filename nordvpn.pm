<?xml version="1.0"?>
<app>

<category>
Network
</category>

<name>
NordVPN - VPN
</name>

<description>
   <am>Northern_sotho Language Meta-Package for LibreOffice</am>
   <ar>Northern_sotho Language Meta-Package for LibreOffice</ar>
   <bg>Northern_sotho Language Meta-Package for LibreOffice</bg>
   <ca>Metapaquet de Northern_sotho per LibreOffice</ca>
   <cs>Northern_sotho Language Meta-Package for LibreOffice</cs>
   <da>Northern_sotho Language Meta-Package for LibreOffice</da>
   <de>Nord-Sotho Meta-Paket für LibreOffice</de>
   <el>Northern_sotho Language Meta-Package for LibreOffice</el>
   <en>Northern_sotho Language Meta-Package for LibreOffice</en>
   <es>Meta-Paquete de Lenguaje Northern_sotho para LibreOffice</es>
   <et>Northern_sotho Language Meta-Package for LibreOffice</et>
   <eu>Northern_sotho Language Meta-Package for LibreOffice</eu>
   <fa>Northern_sotho Language Meta-Package for LibreOffice</fa>
   <fil_PH>Northern_sotho Language Meta-Package for LibreOffice</fil_PH>
   <fi>Northern_sotho Language Meta-Package for LibreOffice</fi>
   <fr>Northern_sotho Language Meta-Package for LibreOffice</fr>
   <he_IL>Northern_sotho Language Meta-Package for LibreOffice</he_IL>
   <hi>Northern_sotho Language Meta-Package for LibreOffice</hi>
   <hr>Northern_sotho Language Meta-Package for LibreOffice</hr>
   <hu>Northern_sotho Language Meta-Package for LibreOffice</hu>
   <id>Northern_sotho Language Meta-Package for LibreOffice</id>
   <is>Northern_sotho Language Meta-Package for LibreOffice</is>
   <it>Northern_sotho Language Meta-Package for LibreOffice</it>
   <ja_JP>Northern_sotho Language Meta-Package for LibreOffice</ja_JP>
   <ja>Northern_sotho Language Meta-Package for LibreOffice</ja>
   <kk>Northern_sotho Language Meta-Package for LibreOffice</kk>
   <ko>Northern_sotho Language Meta-Package for LibreOffice</ko>
   <lt>Northern_sotho Language Meta-Package for LibreOffice</lt>
   <mk>Northern_sotho Language Meta-Package for LibreOffice</mk>
   <mr>Northern_sotho Language Meta-Package for LibreOffice</mr>
   <nb>Northern_sotho Language Meta-Package for LibreOffice</nb>
   <nl>Noord_sotho Taal Meta-Pakket voor LibreOffice</nl>
   <pl>Northern_sotho Language Meta-Package for LibreOffice</pl>
   <pt_BR>Northern_sotho Language Meta-Package for LibreOffice</pt_BR>
   <pt>Sotho setentrional Meta-Pacote de Idioma para LibreOffice</pt>
   <ro>Northern_sotho Language Meta-Package for LibreOffice</ro>
   <ru>Northern_sotho Language Meta-Package for LibreOffice</ru>
   <sk>Northern_sotho Language Meta-Package for LibreOffice</sk>
   <sl>Severni sotovski jezikovni meta-paket za LibreOffice</sl>
   <sq>Northern_sotho Language Meta-Package for LibreOffice</sq>
   <sr>Northern_sotho Language Meta-Package for LibreOffice</sr>
   <sv>Nordlig_sotho Språk Meta-Paket för LibreOffice</sv>
   <tr>Northern_sotho Language Meta-Package for LibreOffice</tr>
   <uk>Northern_sotho Language Meta-Package for LibreOffice</uk>
   <zh_CN>Northern_sotho Language Meta-Package for LibreOffice</zh_CN>
   <zh_TW>Northern_sotho Language Meta-Package for LibreOffice</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>
# purge obsolete nordvpn-sysvinit-compat
if dpkg-query -f '${db:Status-Abbrev}' -W nordvpn-sysvinit-compat  2>/dev/null 1>/dev/null; then
apt-get -y remove --purge nordvpn-sysvinit-compat
fi
rm /tmp/nordvpn-release.deb 2>/dev/null
wget https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb -O /tmp/nordvpn-release.deb
dpkg -i /tmp/nordvpn-release.deb
rm /tmp/nordvpn-release.deb
apt-get update
</preinstall>

<install_package_names>
nordvpn
</install_package_names>

<postinstall>

</postinstall>

<uninstall_package_names>
nordvpn
</uninstall_package_names>

<postuninstall>
# purge obsolete nordvpn-sysvinit-compat
if dpkg-query -f '${db:Status-Abbrev}' -W nordvpn-sysvinit-compat  2>/dev/null 1>/dev/null; then
apt-get -y remove --purge nordvpn-sysvinit-compat
fi
</postuninstall>

</app>
