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
   <ca>Edit PDF documents.</ca>
   <cs>Edit PDF documents.</cs>
   <de>PDF-Dokumente bearbeiten</de>
   <el>Edit PDF documents.</el>
   <en>Edit PDF documents.</en>
   <es>Edit PDF documents.</es>
   <fi>Edit PDF documents.</fi>
   <fr>Editer des documents PDF.</fr>
   <hi>Edit PDF documents.</hi>
   <hr>Edit PDF documents.</hr>
   <hu>Edit PDF documents.</hu>
   <it>Edit PDF documents.</it>
   <ja>Edit PDF documents.</ja>
   <kk>Edit PDF documents.</kk>
   <lt>Edit PDF documents.</lt>
   <nl>Edit PDF documents.</nl>
   <pl>Edit PDF documents.</pl>
   <pt_BR>Edit PDF documents.</pt_BR>
   <pt>Edit PDF documents.</pt>
   <ro>Edit PDF documents.</ro>
   <ru>Edit PDF documents.</ru>
   <sk>Edit PDF documents.</sk>
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
wget $(curl -s https://code-industry.net/free-pdf-editor/ |grep $(dpkg --print-architecture) |grep deb |cut -d" -f2) -O /tmp/master_pdf.deb
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
