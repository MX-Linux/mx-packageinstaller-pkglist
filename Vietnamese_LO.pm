<?xml version="1.0"?>
<app>

<category>
Language
</category>

<name>
Vietnamese_Libreoffice
</name>

<description>
   <am>Virtualbox</am>
   <ar>Virtualbox</ar>
   <bg>Virtualbox</bg>
   <ca>Virtualbox</ca>
   <cs>Virtualbox</cs>
   <da>Virtualbox</da>
   <de>Die Virtualisierungssoftware VirtualBox</de>
   <el>Virtualbox</el>
   <en>Virtualbox</en>
   <es>Máquina virtual</es>
   <et>Virtualbox</et>
   <eu>Virtualbox</eu>
   <fa>Virtualbox</fa>
   <fil_PH>Virtualbox</fil_PH>
   <fi>Virtualbox</fi>
   <fr>Virtualbox</fr>
   <he_IL>Virtualbox</he_IL>
   <hi>Virtualbox</hi>
   <hr>Virtualbox</hr>
   <hu>Virtualbox</hu>
   <id>Virtualbox</id>
   <is>Virtualbox</is>
   <it>Virtualbox</it>
   <ja_JP>Virtualbox</ja_JP>
   <ja>Virtualbox</ja>
   <kk>Virtualbox</kk>
   <ko>Virtualbox</ko>
   <lt>Virtualbox</lt>
   <mk>Virtualbox</mk>
   <mr>Virtualbox</mr>
   <nb>Virtualbox</nb>
   <nl>Virtualbox</nl>
   <pl>menedżer maszyn wirtualnych</pl>
   <pt_BR>Virtualbox</pt_BR>
   <pt>Virtualbox</pt>
   <ro>Virtualbox</ro>
   <ru>Приложение виртуализации VirtualBox</ru>
   <sk>Virtualbox</sk>
   <sl>Virtualbox</sl>
   <sq>Virtualbox</sq>
   <sr>Virtualbox</sr>
   <sv>Virtualbox</sv>
   <tr>Virtualbox</tr>
   <uk>Virtualbox</uk>
   <zh_CN>Virtualbox</zh_CN>
   <zh_TW>Virtualbox</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>


<preinstall>

package_list="
libreoffice-l10n-vi
libreoffice-help-vi
"
lo-installer.sh $package_list

</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
libreoffice-l10n-vi
libreoffice-help-vi
</uninstall_package_names>
</app>
