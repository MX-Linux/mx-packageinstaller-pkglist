<?xml version="1.0" encoding="UTF-8"?>
<app>

<category>
Language
</category>

<name>
Portuguese(PT) Libreoffice
</name>

<description>
   <am>Portuguese(PT) Language Meta-Package for LibreOffice</am>
   <ar>Portuguese(PT) Language Meta-Package for LibreOffice</ar>
   <bg>Portuguese(PT) Language Meta-Package for LibreOffice</bg>
   <bn>Portuguese(PT) Language Meta-Package for LibreOffice</bn>
   <ca>Metapaquet de llengua Portuguesa(PT) per LibreOffice</ca>
   <cs>Portuguese(PT) Language Meta-Package for LibreOffice</cs>
   <da>Portugisisk (portugal) sprog-metapakke til LibreOffice</da>
   <de>Portugiesisches (PT) Meta-Paket für LibreOffice</de>
   <el>LibreOffice στα πορτογαλικά</el>
   <en>Portuguese(PT) Language Meta-Package for LibreOffice</en>
   <es>Meta-Paquete de Idioma Portugués (PT) para LibreOffice</es>
   <et>Portuguese(PT) Language Meta-Package for LibreOffice</et>
   <eu>Portuguese(PT) Language Meta-Package for LibreOffice</eu>
   <fa>Portuguese(PT) Language Meta-Package for LibreOffice</fa>
   <fil_PH>Portuguese(PT) Language Meta-Package for LibreOffice</fil_PH>
   <fi>Portuguese(PT) Language Meta-Package for LibreOffice</fi>
   <fr>Meta-Paquet de langue Portuguais(PT) pour LibreOffice</fr>
   <he_IL>Portuguese(PT) Language Meta-Package for LibreOffice</he_IL>
   <hi>Portuguese(PT) Language Meta-Package for LibreOffice</hi>
   <hr>Portuguese(PT) Language Meta-Package for LibreOffice</hr>
   <hu>Portuguese(PT) Language Meta-Package for LibreOffice</hu>
   <id>Portuguese(PT) Language Meta-Package for LibreOffice</id>
   <is>Portuguese(PT) Language Meta-Package for LibreOffice</is>
   <it>Meta-pacchetto della lingua portoghese(PT) per LibreOffice</it>
   <ja_JP>Portuguese(PT) Language Meta-Package for LibreOffice</ja_JP>
   <ja>Portuguese(PT) Language Meta-Package for LibreOffice</ja>
   <kk>Portuguese(PT) Language Meta-Package for LibreOffice</kk>
   <ko>Portuguese(PT) Language Meta-Package for LibreOffice</ko>
   <lt>Portuguese(PT) Language Meta-Package for LibreOffice</lt>
   <mk>Portuguese(PT) Language Meta-Package for LibreOffice</mk>
   <mr>Portuguese(PT) Language Meta-Package for LibreOffice</mr>
   <nb>Portuguese(PT) Language Meta-Package for LibreOffice</nb>
   <nl>Portuguese(PT) Taal Meta-Pakket voor LibreOffice</nl>
   <pl>Portugalski (PT) metapakiet językowy dla LibreOffice</pl>
   <pt_BR>Português(PT) Meta-Pacote de Idioma para LibreOffice</pt_BR>
   <pt>Português(PT) Meta-Pacote de Idioma para LibreOffice</pt>
   <ro>Portuguese(PT) Language Meta-Package for LibreOffice</ro>
   <ru>Portuguese(PT) Language Meta-Package for LibreOffice</ru>
   <sk>Portuguese(PT) Language Meta-Package for LibreOffice</sk>
   <sl>Portuguese(PT) Language Meta-Package for LibreOffice</sl>
   <sq>Portuguese(PT) Language Meta-Package for LibreOffice</sq>
   <sr>Portuguese(PT) Language Meta-Package for LibreOffice</sr>
   <sv>Portugisiskt(PT) Språk Meta-Paket för LibreOffice</sv>
   <tr>Portuguese(PT) Language Meta-Package for LibreOffice</tr>
   <uk>Portuguese(PT) Language Meta-Package for LibreOffice</uk>
   <vi>Portuguese(PT) Language Meta-Package for LibreOffice</vi>
   <zh_CN>Portuguese(PT) Language Meta-Package for LibreOffice</zh_CN>
   <zh_TW>Portuguese(PT) Language Meta-Package for LibreOffice</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>


<preinstall>

package_list="
libreoffice-l10n-pt
libreoffice-help-pt
"
lo-installer.sh $package_list
apt-get update -o=Dpkg::Use-Pty=0 -o Acquire::http:Timeout=10 -o Acquire::https:Timeout=10 -o Acquire::ftp:Timeout=10

</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
libreoffice-l10n-pt
libreoffice-help-pt
</uninstall_package_names>
</app>
