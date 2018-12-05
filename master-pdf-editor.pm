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
   <ca>Editor de documents PDF</ca>
   <cs>Edit PDF documents.</cs>
   <da>Edit PDF documents.</da>
   <de>PDF-Dokumente bearbeiten</de>
   <el>Επεξεργασία εγγράφων PDF.</el>
   <en>Edit PDF documents.</en>
   <es>Editor de documentos PDF</es>
   <fi>Edit PDF documents.</fi>
   <fr>Éditer des documents PDF.</fr>
   <hi>Edit PDF documents.</hi>
   <hr>Edit PDF documents.</hr>
   <hu>Edit PDF documents.</hu>
   <is>Edit PDF documents.</is>
   <it>Modifica i documenti in PDF.</it>
   <ja>Edit PDF documents.</ja>
   <kk>Edit PDF documents.</kk>
   <lt>Taisyti PDF dokumentus.</lt>
   <nl>Bewerk PDF documenten</nl>
   <pl>Edit PDF documents.</pl>
   <pt_BR>Edit PDF documents.</pt_BR>
   <pt>Editar documentos em formato .pdf.</pt>
   <ro>Edit PDF documents.</ro>
   <ru>Редактор PDF документов</ru>
   <sk>Edit PDF documents.</sk>
   <sq>Edit PDF documents.</sq>
   <sv>Redigera PDF-dokument</sv>
   <tr>Edit PDF documents.</tr>
   <uk>Edit PDF documents.</uk>
   <zh_TW>Edit PDF documents.</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>https://code-industry.net/wp-content/uploads/2016/05/pdfa-edit.png</screenshot>

<preinstall>
curl -RL $(curl -s https://code-industry.net/free-pdf-editor/ | grep -Eo https://[^[:space:]]*$(dpkg --print-architecture).deb) -o /tmp/master_pdf.deb
apt install /tmp/master_pdf.deb
rm /tmp/master.txt
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