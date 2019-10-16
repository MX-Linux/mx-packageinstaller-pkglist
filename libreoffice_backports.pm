<?xml version="1.0"?>
<app>

<category>
Office
</category>

<name>
LibreOffice (backports version)
</name>

<description>
   <am>Meta-Package for LibreOffice (backports version)</am>
   <ar>Meta-Package for LibreOffice (backports version)</ar>
   <bg>Meta-Package for LibreOffice (backports version)</bg>
   <cs>Meta-Package for LibreOffice (backports version)</cs>
   <de>Englische (US) Meta-paket für LibreOffice (backports version)</de>
   <en>Meta-Package for LibreOffice (backports version)</en>
   <es>Ayuda Inglesa (EE.UU.) para LiberOffice</es>
   <et>Meta-Package for LibreOffice (backports version)</et>
   <eu>Meta-Package for LibreOffice (backports version)</eu>
   <fa>Meta-Package for LibreOffice (backports version)</fa>
   <fi>Meta-Package for LibreOffice (backports version)</fi>
   <he_IL>Meta-Package for LibreOffice (backports version)</he_IL>
   <hi>Meta-Package for LibreOffice (backports version)</hi>
   <hr>Meta-Package for LibreOffice (backports version)</hr>
   <hu>Meta-Package for LibreOffice (backports version)</hu>
   <id>Meta-Package for LibreOffice (backports version)</id>
   <is>Meta-Package for LibreOffice (backports version)</is>
   <ja_JP>Meta-Package for LibreOffice (backports version)</ja_JP>
   <ja>Meta-Package for LibreOffice (backports version)</ja>
   <kk>Meta-Package for LibreOffice (backports version)</kk>
   <ko>Meta-Package for LibreOffice (backports version)</ko>
   <lt>Meta-Package for LibreOffice (backports version)</lt>
   <mk>Meta-Package for LibreOffice (backports version)</mk>
   <mr>Meta-Package for LibreOffice (backports version)</mr>
   <nb>Meta-Package for LibreOffice (backports version)</nb>
   <ro>Meta-Package for LibreOffice (backports version)</ro>
   <ru>Meta-Package for LibreOffice (backports version)</ru>
   <sk>Meta-Package for LibreOffice (backports version)</sk>
   <sl>Meta-Package for LibreOffice (backports version)</sl>
   <sq>Meta-Package for LibreOffice (backports version)</sq>
   <sr>Meta-Package for LibreOffice (backports version)</sr>
   <tr>Meta-Package for LibreOffice (backports version)</tr>
   <zh_CN>Meta-Package for LibreOffice (backports version)</zh_CN>
   <zh_TW>Meta-Package for LibreOffice (backports version)</zh_TW>
</description>


<installable>
all
</installable>

<screenshot></screenshot>

<preinstall>

lo-installer.sh --backports --reinstall

</preinstall>

<install_package_names>
lo-backports-helper
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
lo-backports-helper
</uninstall_package_names>
</app>
