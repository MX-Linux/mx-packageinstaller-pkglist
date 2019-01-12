<?xml version="1.0"?>
<app>

<category>
Development
</category>

<name>
atom
</name>

<description>
   <am>atom text editor IDE</am>
   <ca>atom text editor IDE</ca>
   <cs>atom text editor IDE</cs>
   <da>atom text editor IDE</da>
   <de>atom text editor IDE</de>
   <el>atom text editor IDE</el>
   <en>atom text editor IDE</en>
   <es>atom text editor IDE</es>
   <fi>atom text editor IDE</fi>
   <fr>atom text editor IDE</fr>
   <hi>atom text editor IDE</hi>
   <hr>atom text editor IDE</hr>
   <hu>atom text editor IDE</hu>
   <is>atom text editor IDE</is>
   <it>atom text editor IDE</it>
   <ja>atom text editor IDE</ja>
   <kk>atom text editor IDE</kk>
   <lt>atom text editor IDE</lt>
   <nl>atom text editor IDE</nl>
   <pl>atom text editor IDE</pl>
   <pt_BR>atom text editor IDE</pt_BR>
   <pt>atom text editor IDE</pt>
   <ro>atom text editor IDE</ro>
   <ru>atom text editor IDE</ru>
   <sk>atom text editor IDE</sk>
   <sq>atom text editor IDE</sq>
   <sv>atom text editor IDE</sv>
   <tr>atom text editor IDE</tr>
   <uk>atom text editor IDE</uk>
   <zh_TW>atom text editor IDE</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Screenshot_of_Atom_editor.png/800px-Screenshot_of_Atom_editor.png</screenshot>

<preinstall>
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | apt-key add -
echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main">/etc/apt/sources.list.d/atom.list
apt-get update
</preinstall>

<install_package_names>
atom
</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
atom
</uninstall_package_names>
</app>
