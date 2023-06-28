<?xml version="1.0" encoding="UTF-8"?>
<app>

<category>
Language
</category>

<name>
Ukrainian_Libreoffice
</name>

<description>
   <am>Ukrainian localisation of LibreOffice</am>
   <ar>Ukrainian localisation of LibreOffice</ar>
   <bg>Ukrainian localisation of LibreOffice</bg>
   <bn>Ukrainian localisation of LibreOffice</bn>
   <ca>Localització de LibreOffice en Ucrainès</ca>
   <cs>Ukrainian localisation of LibreOffice</cs>
   <da>Ukrainsk oversættelse af LibreOffice</da>
   <de>Ukrainische Lokalisierung von LibreOffice</de>
   <el>LibreOffice στα Ουκρανικά</el>
   <en>Ukrainian localisation of LibreOffice</en>
   <es>Localización Ucraniano de LibreOffice</es>
   <et>Ukrainian localisation of LibreOffice</et>
   <eu>Ukrainian localisation of LibreOffice</eu>
   <fa>Ukrainian localisation of LibreOffice</fa>
   <fil_PH>Ukrainian localisation of LibreOffice</fil_PH>
   <fi>Ukrainalainen kotoistus LibreOffice:lle</fi>
   <fr>Localisation ukrainienne pour LibreOffice</fr>
   <he_IL>Ukrainian localisation of LibreOffice</he_IL>
   <hi>लिब्रे-ऑफिस का यूक्रेनी संस्करण</hi>
   <hr>Ukrainian localisation of LibreOffice</hr>
   <hu>Ukrainian localisation of LibreOffice</hu>
   <id>Ukrainian localisation of LibreOffice</id>
   <is>Ukrainian localisation of LibreOffice</is>
   <it>Localizzazione ucraina di LibreOffice </it>
   <ja>LibreOffice のウクライナ語パック</ja>
   <kk>Ukrainian localisation of LibreOffice</kk>
   <ko>Ukrainian localisation of LibreOffice</ko>
   <lt>Ukrainian localisation of LibreOffice</lt>
   <mk>Ukrainian localisation of LibreOffice</mk>
   <mr>Ukrainian localisation of LibreOffice</mr>
   <nb>Ukrainsk lokaltilpassing av LibreOffice</nb>
   <nl>Oekraïense lokalisatie van LibreOffice</nl>
   <pl>Ukraińska lokalizacja LibreOffice</pl>
   <pt_BR>Ucraniano Localização para o LibreOffice</pt_BR>
   <pt>Ucraniano Localização para LibreOffice</pt>
   <ro>Ukrainian localisation of LibreOffice</ro>
   <ru>Украинский перевод для LibreOffice</ru>
   <sk>Ukrainian localisation of LibreOffice</sk>
   <sl>Ukrajinske krajevne nastavitve za LibreOffice</sl>
   <sq>Përkthimi i LibreOffice-it në ukrainisht</sq>
   <sr>Ukrainian localisation of LibreOffice</sr>
   <sv>Ukrainsk lokalisering av LibreOffice</sv>
   <tr>LibreOffice Ukraynaca yerelleştirmesi</tr>
   <uk>Ukrainian localisation of LibreOffice</uk>
   <vi>Ukrainian localisation of LibreOffice</vi>
   <zh_CN>Ukrainian localisation of LibreOffice</zh_CN>
   <zh_TW>Ukrainian localisation of LibreOffice</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>


<preinstall>

package_list="
libreoffice-l10n-uk
"
lo-installer.sh $package_list
apt-get update -o=Dpkg::Use-Pty=0 -o Acquire::http:Timeout=10 -o Acquire::https:Timeout=10 -o Acquire::ftp:Timeout=10

</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
libreoffice-l10n-uk
</uninstall_package_names>
</app>
