<?xml version="1.0"?>
<app>

<category>
Office
</category>

<name>
Adobe Reader
</name>

<description>
   <am>Adobe Reader PDF viewer</am>
   <ar>Adobe Reader PDF viewer</ar>
   <bg>Adobe Reader PDF viewer</bg>
   <bn>Adobe Reader PDF viewer</bn>
   <ca>Visor de PDFs d'Adobe Reader</ca>
   <cs>Adobe Reader PDF viewer</cs>
   <da>Adobe Reader PDF-fremviser</da>
   <de>Adobe Reader PDF Betrachter</de>
   <el>Πρόγραμμα προβολής PDF του Adobe Reader</el>
   <en>Adobe Reader PDF viewer</en>
   <es>Adobe Reader, visualizador de PDF</es>
   <et>Adobe Reader PDF viewer</et>
   <eu>Adobe Reader PDF viewer</eu>
   <fa>Adobe Reader PDF viewer</fa>
   <fil_PH>Adobe Reader PDF viewer</fil_PH>
   <fi>Adobe Reader PDF viewer</fi>
   <fr>Visionneuse de documents Adobe Reader PDF</fr>
   <he_IL>Adobe Reader PDF viewer</he_IL>
   <hi>Adobe Reader PDF viewer</hi>
   <hr>Adobe Reader PDF preglednik</hr>
   <hu>Adobe Reader PDF viewer</hu>
   <id>Adobe Reader PDF viewer</id>
   <is>Adobe Reader PDF viewer</is>
   <it>Visualizzatore PDF di Adobe Reader</it>
   <ja_JP>Adobe Reader PDF viewer</ja_JP>
   <ja>Adobe Reader PDF viewer</ja>
   <kk>Adobe Reader PDF viewer</kk>
   <ko>Adobe Reader PDF viewer</ko>
   <lt>Adobe Reader PDF žiūryklė</lt>
   <mk>Adobe Reader PDF viewer</mk>
   <mr>Adobe Reader PDF viewer</mr>
   <nb>Adobe Reader PDF viewer</nb>
   <nl>Adobe Reader PDF lezer</nl>
   <pl>przeglądarka plików PDF Adobe Reader</pl>
   <pt_BR>Visualizador de PDF Adobe Reader</pt_BR>
   <pt>Visualizador de PDF Adobe Reader</pt>
   <ro>Adobe Reader PDF viewer</ro>
   <ru>Просмотрщик PDF документов от Adobe</ru>
   <sk>prehliadač PDF Adobe Reader</sk>
   <sl>Adobe Reader za pregledovanje PDF dokumentov</sl>
   <sq>Adobe Reader PDF viewer</sq>
   <sr>Adobe Reader PDF viewer</sr>
   <sv>Adobe Reader PDF visningsprogram</sv>
   <tr>Adobe Reader PDF görüntüleyici</tr>
   <uk>Adobe Reader PDF переглядач</uk>
   <vi>Trình đọc PDF Adobe Reader</vi>
   <zh_CN>Adobe Reader PDF viewer</zh_CN>
   <zh_TW>Adobe Reader PDF viewer</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>
gpg --keyserver keyserver.ubuntu.com --recv-keys 5C808C2B65558117
gpg --armor --export 5C808C2B65558117 | apt-key add -
echo "deb http://www.deb-multimedia.org/ buster main non-free">/etc/apt/sources.list.d/mxpitemp.list
apt-get update
</preinstall>

<install_package_names>
acroread
acroread-plugins
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/mxpitemp.list
apt-get update
</postinstall>


<uninstall_package_names>
acroread
acroread-plugins
</uninstall_package_names>
</app>
