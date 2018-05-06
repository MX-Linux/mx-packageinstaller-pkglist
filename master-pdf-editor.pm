<?xml version="1.0"?>
<app>

<category>
Office
</category>

<name>  
Master PDF Editor (Free Version)
</name>

<description>  
Edit PDF documents.
</description>

<installable>
all
</installable>

<screenshot>https://code-industry.net/wp-content/uploads/2016/05/pdfa-edit.png</screenshot>

<preinstall>
wget $(curl -s https://code-industry.net/free-pdf-editor/ |grep $(dpkg --print-architecture) |grep deb |cut -d\" -f2) -O /tmp/master_pdf.deb
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
