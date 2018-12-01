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
   <ca>Visor de PDFs d'Adobe Reader</ca>
   <cs>Adobe Reader PDF viewer</cs>
   <da>Adobe Reader PDF viewer</da>
   <de>Adobe Reader PDF Betrachter</de>
   <el>Πρόγραμμα προβολής PDF του Adobe Reader</el>
   <en>Adobe Reader PDF viewer</en>
   <es>Adobe Reader, Visualizador de PDF</es>
   <fi>Adobe Reader PDF viewer</fi>
   <fr>Visionneuse de documents Adobe Reader PDF</fr>
   <hi>Adobe Reader PDF viewer</hi>
   <hr>Adobe Reader PDF preglednik</hr>
   <hu>Adobe Reader PDF viewer</hu>
   <is>Adobe Reader PDF viewer</is>
   <it>Visualizzatore PDF di Adobe Reader</it>
   <ja>Adobe Reader PDF viewer</ja>
   <kk>Adobe Reader PDF viewer</kk>
   <lt>Adobe Reader PDF žiūryklė</lt>
   <nl>Adobe Reader PDF lezer</nl>
   <pl>Adobe Reader PDF viewer</pl>
   <pt_BR>Adobe Reader PDF viewer</pt_BR>
   <pt>Visualizador de PDF Adobe Reader</pt>
   <ro>Adobe Reader PDF viewer</ro>
   <ru>Adobe Reader PDF viewer</ru>
   <sk>Adobe Reader PDF viewer</sk>
   <sq>Adobe Reader PDF viewer</sq>
   <sv>Adobe Reader PDF visningsprogram</sv>
   <tr>Adobe Reader PDF viewer</tr>
   <uk>Adobe Reader PDF viewer</uk>
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
