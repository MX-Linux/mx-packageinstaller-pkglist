<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Liquorix 64 bit
</name>

<description>
   <am>Khmer Language Meta-Package for LibreOffice</am>
   <ar>Khmer Language Meta-Package for LibreOffice</ar>
   <bg>Khmer Language Meta-Package for LibreOffice</bg>
   <ca>Metapaquet d'idioma Khmer per LibreOffice</ca>
   <cs>Khmer Language Meta-Package for LibreOffice</cs>
   <da>Khmer Language Meta-Package for LibreOffice</da>
   <de>Khmer Meta-Paket für LibreOffice</de>
   <el>Khmer Language Meta-Package for LibreOffice</el>
   <en>Khmer Language Meta-Package for LibreOffice</en>
   <es>Meta-Paquete de idioma khmer para LibreOffice</es>
   <et>Khmer Language Meta-Package for LibreOffice</et>
   <eu>Khmer Language Meta-Package for LibreOffice</eu>
   <fa>Khmer Language Meta-Package for LibreOffice</fa>
   <fil_PH>Khmer Language Meta-Package for LibreOffice</fil_PH>
   <fi>Khmer Language Meta-Package for LibreOffice</fi>
   <fr>Khmer Language Meta-Package for LibreOffice</fr>
   <he_IL>Khmer Language Meta-Package for LibreOffice</he_IL>
   <hi>Khmer Language Meta-Package for LibreOffice</hi>
   <hr>Khmer Language Meta-Package for LibreOffice</hr>
   <hu>Khmer Language Meta-Package for LibreOffice</hu>
   <id>Khmer Language Meta-Package for LibreOffice</id>
   <is>Khmer Language Meta-Package for LibreOffice</is>
   <it>Khmer Language Meta-Package for LibreOffice</it>
   <ja_JP>Khmer Language Meta-Package for LibreOffice</ja_JP>
   <ja>Khmer Language Meta-Package for LibreOffice</ja>
   <kk>Khmer Language Meta-Package for LibreOffice</kk>
   <ko>Khmer Language Meta-Package for LibreOffice</ko>
   <lt>Khmer Language Meta-Package for LibreOffice</lt>
   <mk>Khmer Language Meta-Package for LibreOffice</mk>
   <mr>Khmer Language Meta-Package for LibreOffice</mr>
   <nb>Khmer Language Meta-Package for LibreOffice</nb>
   <nl>Khmer Taal Meta-Pakket voor LibreOffice</nl>
   <pl>Khmer Language Meta-Package for LibreOffice</pl>
   <pt_BR>Khmer Language Meta-Package for LibreOffice</pt_BR>
   <pt>Khmer Meta-Pacote de Idioma para LibreOffice</pt>
   <ro>Khmer Language Meta-Package for LibreOffice</ro>
   <ru>Khmer Language Meta-Package for LibreOffice</ru>
   <sk>Khmer Language Meta-Package for LibreOffice</sk>
   <sl>Kmerski jezikovni meta-paket za LibreOffice</sl>
   <sq>Khmer Language Meta-Package for LibreOffice</sq>
   <sr>Khmer Language Meta-Package for LibreOffice</sr>
   <sv>Khmer Språk Meta-Paket för LibreOffice</sv>
   <tr>Khmer Language Meta-Package for LibreOffice</tr>
   <uk>Khmer Language Meta-Package for LibreOffice</uk>
   <zh_CN>Khmer Language Meta-Package for LibreOffice</zh_CN>
   <zh_TW>Khmer Language Meta-Package for LibreOffice</zh_TW>
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
linux-image-liquorix-amd64
linux-headers-liquorix-amd64
broadcom-sta-dkms
ndiswrapper-dkms
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/mxpitemp.list
rebuild_dkms_packages.sh linux-image-liquorix-amd64
apt-get -y remove linux-image-liquorix-amd64 linux-headers-liquorix-amd64
apt-get update
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
