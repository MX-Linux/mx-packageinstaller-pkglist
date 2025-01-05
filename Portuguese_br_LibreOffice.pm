<?xml version="1.0" encoding="UTF-8"?>
<app>

<category>
Language
</category>

<name>
Portuguese(BR) Libreoffice
</name>

<description>
   <am>Portuguese(BR) Language Meta-Package for LibreOffice</am>
   <ar>Portuguese(BR) Language Meta-Package for LibreOffice</ar>
   <bg>Portuguese(BR) Language Meta-Package for LibreOffice</bg>
   <bn>Portuguese(BR) Language Meta-Package for LibreOffice</bn>
   <ca>Meta-paquet de llengua per LibreOffice en Portuguès (BR)</ca>
   <cs>Portuguese(BR) Language Meta-Package for LibreOffice</cs>
   <da>Portugisisk (brasilien) sprog-metapakke til LibreOffice</da>
   <de>Portugiesisches (BR) Meta-Paket für LibreOffice</de>
   <el>LibreOffice στα πορτογαλικά (Βραζιλίας)</el>
   <en>Portuguese(BR) Language Meta-Package for LibreOffice</en>
   <es>Meta-Paquete de Idioma Portugués (BR) para LibreOffice</es>
   <et>Portuguese(BR) Language Meta-Package for LibreOffice</et>
   <eu>Portuguese(BR) Language Meta-Package for LibreOffice</eu>
   <fa>Portuguese(BR) Language Meta-Package for LibreOffice</fa>
   <fil_PH>Portuguese(BR) Language Meta-Package for LibreOffice</fil_PH>
   <fi>Portuguese(BR) Language Meta-Package for LibreOffice</fi>
   <fr>Méta-paquet langue portugaise (BR) pour LibreOffice</fr>
   <he_IL>Portuguese(BR) Language Meta-Package for LibreOffice</he_IL>
   <hi>Portuguese(BR) Language Meta-Package for LibreOffice</hi>
   <hr>Portuguese(BR) Language Meta-Package for LibreOffice</hr>
   <hu>Portuguese(BR) Language Meta-Package for LibreOffice</hu>
   <id>Portuguese(BR) Language Meta-Package for LibreOffice</id>
   <is>Portuguese(BR) Language Meta-Package for LibreOffice</is>
   <it>Meta-pacchetto della lingua portoghese(BR) per LibreOffice</it>
   <ja_JP>Portuguese(BR) Language Meta-Package for LibreOffice</ja_JP>
   <ja>Portuguese(BR) Language Meta-Package for LibreOffice</ja>
   <kk>Portuguese(BR) Language Meta-Package for LibreOffice</kk>
   <ko>Portuguese(BR) Language Meta-Package for LibreOffice</ko>
   <lt>Portuguese(BR) Language Meta-Package for LibreOffice</lt>
   <mk>Portuguese(BR) Language Meta-Package for LibreOffice</mk>
   <mr>Portuguese(BR) Language Meta-Package for LibreOffice</mr>
   <nb>Portuguese(BR) Language Meta-Package for LibreOffice</nb>
   <nl>Portuguese(BR) Taal Meta-Pakket voor LibreOffice</nl>
   <pl>Portugalski (BR) metapakiet językowy dla LibreOffice</pl>
   <pt_BR>Português(BR) Meta-Pacote de Idioma para LibreOffice</pt_BR>
   <pt>Português(BR) Meta-Pacote de Idioma para LibreOffice</pt>
   <ro>Portuguese(BR) Language Meta-Package for LibreOffice</ro>
   <ru>Portuguese(BR) Language Meta-Package for LibreOffice</ru>
   <sk>Portuguese(BR) Language Meta-Package for LibreOffice</sk>
   <sl>Portuguese(BR) Language Meta-Package for LibreOffice</sl>
   <sq>Portuguese(BR) Language Meta-Package for LibreOffice</sq>
   <sr>Portuguese(BR) Language Meta-Package for LibreOffice</sr>
   <sv>Portugisiskt(BR) Språk Meta-Paket för LibreOffice</sv>
   <tr>Portuguese(BR) Language Meta-Package for LibreOffice</tr>
   <uk>Portuguese(BR) Language Meta-Package for LibreOffice</uk>
   <vi>Portuguese(BR) Language Meta-Package for LibreOffice</vi>
   <zh_CN>Portuguese(BR) Language Meta-Package for LibreOffice</zh_CN>
   <zh_TW>Portuguese(BR) Language Meta-Package for LibreOffice</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>


<preinstall>

package_list="
libreoffice-l10n-pt-br
libreoffice-help-pt-br
"
lo-installer.sh $package_list
apt-get update -o=Dpkg::Use-Pty=0 -o Acquire::http:Timeout=10 -o Acquire::https:Timeout=10 -o Acquire::ftp:Timeout=10

</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
libreoffice-l10n-pt-br
libreoffice-help-pt-br
</uninstall_package_names>
</app>
