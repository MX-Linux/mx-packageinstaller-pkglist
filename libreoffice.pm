<?xml version="1.0"?>
<app>

<category>
Office
</category>

<name>
LibreOffice
</name>

<description>
   <am>Meta-Package for LibreOffice</am>
   <ar>Meta-Package for LibreOffice</ar>
   <bg>Meta-Package for LibreOffice</bg>
   <cs>Meta-Package for LibreOffice</cs>
   <de>Englische (US) Meta-paket für LibreOffice</de>
   <en>Meta-Package for LibreOffice</en>
   <es>Ayuda Inglesa (EE.UU.) para LiberOffice</es>
   <et>Meta-Package for LibreOffice</et>
   <eu>Meta-Package for LibreOffice</eu>
   <fa>Meta-Package for LibreOffice</fa>
   <fi>Meta-Package for LibreOffice</fi>
   <he_IL>Meta-Package for LibreOffice</he_IL>
   <hi>Meta-Package for LibreOffice</hi>
   <hr>Meta-Package for LibreOffice</hr>
   <hu>Meta-Package for LibreOffice</hu>
   <id>Meta-Package for LibreOffice</id>
   <is>Meta-Package for LibreOffice</is>
   <ja_JP>Meta-Package for LibreOffice</ja_JP>
   <ja>Meta-Package for LibreOffice</ja>
   <kk>Meta-Package for LibreOffice</kk>
   <ko>Meta-Package for LibreOffice</ko>
   <lt>Meta-Package for LibreOffice</lt>
   <mk>Meta-Package for LibreOffice</mk>
   <mr>Meta-Package for LibreOffice</mr>
   <nb>Meta-Package for LibreOffice</nb>
   <ro>Meta-Package for LibreOffice</ro>
   <ru>Meta-Package for LibreOffice</ru>
   <sk>Meta-Package for LibreOffice</sk>
   <sl>Meta-Package for LibreOffice</sl>
   <sq>Meta-Package for LibreOffice</sq>
   <sr>Meta-Package for LibreOffice</sr>
   <tr>Meta-Package for LibreOffice</tr>
   <zh_CN>Meta-Package for LibreOffice</zh_CN>
   <zh_TW>Meta-Package for LibreOffice</zh_TW>
</description>


<installable>
all
</installable>

<screenshot></screenshot>

<preinstall>

lo-installer.sh --distro --reinstall

</preinstall>

<install_package_names>
lo-main-helper
</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
libreoffice-base
libreoffice-calc 
libreoffice-draw
libreoffice-impress
libreoffice-math
libreoffice-writer
uno-libs3
ure
lo-main-helper
</uninstall_package_names>
</app>
