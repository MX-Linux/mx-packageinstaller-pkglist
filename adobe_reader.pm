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
   <ca>Visor de PDFs d'Adobe Reader</ca>
   <cs>Adobe Reader PDF viewer</cs>
   <da>Adobe Reader PDF-fremviser</da>
   <de>Adobe Reader PDF Betrachter</de>
   <el>Πρόγραμμα προβολής PDF του Adobe Reader</el>
   <en>Adobe Reader PDF viewer</en>
   <es>Adobe Reader, Visualizador de PDF</es>
   <et>Adobe Reader PDF viewer</et>
   <eu>Adobe Reader PDF viewer</eu>
   <fa>Adobe Reader PDF viewer</fa>
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
   <nb>Adobe Reader PDF viewer</nb>
   <nl>Adobe Reader PDF lezer</nl>
   <pl>przeglądarka plików PDF Adobe Reader</pl>
   <pt_BR>Adobe Reader PDF viewer</pt_BR>
   <pt>Visualizador de PDF Adobe Reader</pt>
   <ro>Adobe Reader PDF viewer</ro>
   <ru>Просмотрщик PDF документов от Adobe</ru>
   <sk>Adobe Reader PDF viewer</sk>
   <sl>Adobe Reader PDF viewer</sl>
   <sq>Adobe Reader PDF viewer</sq>
   <sr>Adobe Reader PDF viewer</sr>
   <sv>Adobe Reader PDF visningsprogram</sv>
   <tr>Adobe Reader PDF viewer</tr>
   <uk>Adobe Reader PDF переглядач</uk>
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
echo "deb http://www.deb-multimedia.org/ jessie main non-free">/etc/apt/sources.list.d/mxpitemp.list
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
