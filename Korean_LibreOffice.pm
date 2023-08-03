<?xml version="1.0" encoding="UTF-8"?>
<app>

<category>
Language
</category>

<name>
Korean_Libreoffice
</name>

<description>
   <am>Korean localisation of LibreOffice</am>
   <ar>Korean localisation of LibreOffice</ar>
   <bg>Korean localisation of LibreOffice</bg>
   <bn>Korean localisation of LibreOffice</bn>
   <ca>Localització en Coreà per a LibreOffice</ca>
   <cs>Korean localisation of LibreOffice</cs>
   <da>Koreansk oversættelse af LibreOffice</da>
   <de>Koreanische Lokalisierung von LibreOffice</de>
   <el>LibreOffice στα Κορεατικά</el>
   <en>Korean localisation of LibreOffice</en>
   <es>Localización Coreano de LibreOffice</es>
   <et>Korean localisation of LibreOffice</et>
   <eu>Korean localisation of LibreOffice</eu>
   <fa>Korean localisation of LibreOffice</fa>
   <fil_PH>Korean localisation of LibreOffice</fil_PH>
   <fi>Korealainen kotoistus LibreOffice:lle</fi>
   <fr>Localisation coréenne pour LibreOffice</fr>
   <he_IL>Korean localisation of LibreOffice</he_IL>
   <hi>लिब्रे-ऑफिस का कोरियाई संस्करण</hi>
   <hr>Korean localisation of LibreOffice</hr>
   <hu>Korean localisation of LibreOffice</hu>
   <id>Korean localisation of LibreOffice</id>
   <is>Korean localisation of LibreOffice</is>
   <it>Localizzazione coreana di LibreOffice </it>
   <ja>LibreOffice の韓国語パック</ja>
   <kk>Korean localisation of LibreOffice</kk>
   <ko>Korean localisation of LibreOffice</ko>
   <lt>Korean localisation of LibreOffice</lt>
   <mk>Korean localisation of LibreOffice</mk>
   <mr>Korean localisation of LibreOffice</mr>
   <nb>Koreansk lokaltilpassing av LibreOffice</nb>
   <nl>Koreaanse lokalisatie van LibreOffice</nl>
   <pl>Koreańska lokalizacja LibreOffice</pl>
   <pt_BR>Coreano Localização para o LibreOffice</pt_BR>
   <pt>Coreano Localização para LibreOffice</pt>
   <ro>Korean localisation of LibreOffice</ro>
   <ru>Корейский перевод для LibreOffice</ru>
   <sk>Korean localisation of LibreOffice</sk>
   <sl>Korejske krajevne nastavitve za LibreOffice</sl>
   <sq>Përkthimi i LibreOffice-it në koreançe</sq>
   <sr>Korean localisation of LibreOffice</sr>
   <sv>Koreansk lokalisering av LibreOffice</sv>
   <tr>LibreOffice Korece yerelleştirmesi</tr>
   <uk>Korean локалізація LibreOffice</uk>
   <vi>Korean localisation of LibreOffice</vi>
   <zh_CN>Korean localisation of LibreOffice</zh_CN>
   <zh_TW>Korean localisation of LibreOffice</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>


<preinstall>

package_list="
libreoffice-l10n-ko
libreoffice-help-ko
"
lo-installer.sh $package_list
apt-get update -o=Dpkg::Use-Pty=0 -o Acquire::http:Timeout=10 -o Acquire::https:Timeout=10 -o Acquire::ftp:Timeout=10

</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
libreoffice-l10n-ko
libreoffice-help-ko
</uninstall_package_names>
</app>
