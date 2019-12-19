<?xml version="1.0"?>
<app>

<category>
Office
</category>

<name>
Master PDF Editor (Free Version)
</name>

<description>
   <am>Edit PDF documents.</am>
   <ar>Edit PDF documents.</ar>
   <bg>Edit PDF documents.</bg>
   <ca>Editor de documents PDF</ca>
   <cs>Edit PDF documents.</cs>
   <da>Rediger PDF-dokumenter.</da>
   <de>PDF-Dokumente bearbeiten</de>
   <el>Επεξεργασία εγγράφων PDF.</el>
   <en>Edit PDF documents.</en>
   <es>Editor de documentos PDF</es>
   <et>Edit PDF documents.</et>
   <eu>Edit PDF documents.</eu>
   <fa>Edit PDF documents.</fa>
   <fi>Muokkaa PDF-asiakirjoja.</fi>
   <fr>Éditer des documents PDF.</fr>
   <he_IL>Edit PDF documents.</he_IL>
   <hi>Edit PDF documents.</hi>
   <hr>Edit PDF documents.</hr>
   <hu>Edit PDF documents.</hu>
   <id>Edit PDF documents.</id>
   <is>Edit PDF documents.</is>
   <it>Modifica i documenti in PDF.</it>
   <ja_JP>Edit PDF documents.</ja_JP>
   <ja>Edit PDF documents.</ja>
   <kk>Edit PDF documents.</kk>
   <ko>Edit PDF documents.</ko>
   <lt>Taisyti PDF dokumentus.</lt>
   <mk>Edit PDF documents.</mk>
   <mr>Edit PDF documents.</mr>
   <nb>Edit PDF documents.</nb>
   <nl>Bewerk PDF documenten</nl>
   <pl>edytuje dokumenty PDF</pl>
   <pt_BR>Editar documentos em formato .pdf.</pt_BR>
   <pt>Editar documentos em formato .pdf.</pt>
   <ro>Edit PDF documents.</ro>
   <ru>Редактор PDF документов</ru>
   <sk>Edit PDF documents.</sk>
   <sl>Urejanje PDF dokumentov</sl>
   <sq>Edit PDF documents.</sq>
   <sr>Edit PDF documents.</sr>
   <sv>Redigera PDF-dokument</sv>
   <tr>Edit PDF documents.</tr>
   <uk>редагування PDF документів.</uk>
   <zh_CN>Edit PDF documents.</zh_CN>
   <zh_TW>Edit PDF documents.</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>https://code-industry.net/wp-content/uploads/2016/05/pdfa-edit.png</screenshot>

<preinstall>
curl -RL $(curl -s https://code-industry.net/free-pdf-editor/ | grep -Eo https://[^[:space:]]*$(dpkg --print-architecture).deb) -o /tmp/master_pdf.deb
apt install /tmp/master_pdf.deb
rm /tmp/master_pdf.deb
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
master-pdf-editor
</uninstall_package_names>
</app>
