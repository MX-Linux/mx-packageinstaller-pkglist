<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>
Waterfox
</name>

<description>
   <am>Welsh Language Meta-Package for LibreOffice</am>
   <ar>Welsh Language Meta-Package for LibreOffice</ar>
   <bg>Welsh Language Meta-Package for LibreOffice</bg>
   <ca>Metapaquet d'idioma Gal·lès per LibreOffice</ca>
   <cs>Welsh Language Meta-Package for LibreOffice</cs>
   <da>Welsh Language Meta-Package for LibreOffice</da>
   <de>Walisisches Meta-Paket für LibreOffice</de>
   <el>Welsh Language Meta-Package for LibreOffice</el>
   <en>Welsh Language Meta-Package for LibreOffice</en>
   <es>Meta-Paquete de idioma galés para LibreOffice</es>
   <et>Welsh Language Meta-Package for LibreOffice</et>
   <eu>Welsh Language Meta-Package for LibreOffice</eu>
   <fa>Welsh Language Meta-Package for LibreOffice</fa>
   <fil_PH>Welsh Language Meta-Package for LibreOffice</fil_PH>
   <fi>Welsh Language Meta-Package for LibreOffice</fi>
   <fr>Welsh Language Meta-Package for LibreOffice</fr>
   <he_IL>Welsh Language Meta-Package for LibreOffice</he_IL>
   <hi>Welsh Language Meta-Package for LibreOffice</hi>
   <hr>Welsh Language Meta-Package for LibreOffice</hr>
   <hu>Welsh Language Meta-Package for LibreOffice</hu>
   <id>Welsh Language Meta-Package for LibreOffice</id>
   <is>Welsh Language Meta-Package for LibreOffice</is>
   <it>Welsh Language Meta-Package for LibreOffice</it>
   <ja_JP>Welsh Language Meta-Package for LibreOffice</ja_JP>
   <ja>Welsh Language Meta-Package for LibreOffice</ja>
   <kk>Welsh Language Meta-Package for LibreOffice</kk>
   <ko>Welsh Language Meta-Package for LibreOffice</ko>
   <lt>Welsh Language Meta-Package for LibreOffice</lt>
   <mk>Welsh Language Meta-Package for LibreOffice</mk>
   <mr>Welsh Language Meta-Package for LibreOffice</mr>
   <nb>Welsh Language Meta-Package for LibreOffice</nb>
   <nl>Welsh Language Meta-Package for LibreOffice</nl>
   <pl>Welsh Language Meta-Package for LibreOffice</pl>
   <pt_BR>Welsh Language Meta-Package for LibreOffice</pt_BR>
   <pt>Galês Meta-Pacote de Idioma para LibreOffice</pt>
   <ro>Welsh Language Meta-Package for LibreOffice</ro>
   <ru>Welsh Language Meta-Package for LibreOffice</ru>
   <sk>Welsh Language Meta-Package for LibreOffice</sk>
   <sl>Velški jezikovni meta-paket za LibreOffice</sl>
   <sq>Welsh Language Meta-Package for LibreOffice</sq>
   <sr>Welsh Language Meta-Package for LibreOffice</sr>
   <sv>Walesiska Språk Meta-Paket för LibreOffice</sv>
   <tr>Welsh Language Meta-Package for LibreOffice</tr>
   <uk>Welsh Language Meta-Package for LibreOffice</uk>
   <zh_CN>Welsh Language Meta-Package for LibreOffice</zh_CN>
   <zh_TW>Welsh Language Meta-Package for LibreOffice</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>https://www.waterfoxproject.org/media/img/waterfox/products/desktop/waterfox-browser.40990c516643.svg</screenshot>

<preinstall>
</preinstall>

<install_package_names>
waterfox-classic-kpe
</install_package_names>


<postinstall>
if [ "$(locale |grep LANG|cut -d= -f2 |cut -d_ -f1)" != "en" ]; then
apt-get install waterfox-classic-i18n-$(locale |grep LANG|cut -d= -f2 |cut -d_ -f1)
fi
</postinstall>


<uninstall_package_names>
waterfox-classic-kpe
</uninstall_package_names>
</app>
