<?xml version="1.0" encoding="UTF-8"?>
<app>

<category>
Language
</category>

<name>
Catalan_Libreoffice
</name>

<description>
   <am>Catalan LibreOffice Language Meta-Package</am>
   <ar>Catalan LibreOffice Language Meta-Package</ar>
   <bg>Catalan LibreOffice Language Meta-Package</bg>
   <bn>Catalan LibreOffice Language Meta-Package</bn>
   <ca>Meta-paquet de llengua Catalana per LibreOffice</ca>
   <cs>Catalan LibreOffice Language Meta-Package</cs>
   <da>Catalansk LibreOffice sprog-metapakke</da>
   <de>Katalanisches LibreOffice Meta-Paket</de>
   <el>LibreOffice στα Καταλανικά</el>
   <en>Catalan LibreOffice Language Meta-Package</en>
   <es>Meta paquete catalán de Libre Office</es>
   <et>Catalan LibreOffice Language Meta-Package</et>
   <eu>Catalan LibreOffice Language Meta-Package</eu>
   <fa>Catalan LibreOffice Language Meta-Package</fa>
   <fil_PH>Catalan LibreOffice Language Meta-Package</fil_PH>
   <fi>Katalonialainen kielipaketti LibreOffice:lle</fi>
   <fr>Localisation catalane pour Meta-Package</fr>
   <he_IL>Catalan LibreOffice Language Meta-Package</he_IL>
   <hi>लिब्रे-ऑफिस हेतु कैटलन भाषा मेटा-पैकेज</hi>
   <hr>Catalan LibreOffice Language Meta-Package</hr>
   <hu>Catalan LibreOffice Language Meta-Package</hu>
   <id>Catalan LibreOffice Language Meta-Package</id>
   <is>Catalan LibreOffice Language Meta-Package</is>
   <it>Meta-pacchetto della lingua catalana per LibreOffice</it>
   <ja>カタロニア語用 LibreOffice 言語メタパッケージ</ja>
   <kk>Catalan LibreOffice Language Meta-Package</kk>
   <ko>Catalan LibreOffice Language Meta-Package</ko>
   <lt>Catalan LibreOffice Language Meta-Package</lt>
   <mk>Catalan LibreOffice Language Meta-Package</mk>
   <mr>Catalan LibreOffice Language Meta-Package</mr>
   <nb>Katalansk språkpakke for LibreOffice</nb>
   <nl>Catalaanse LibreOffice Taal Meta-Pakket</nl>
   <pl>Kataloński metapakiet językowy dla LibreOffice</pl>
   <pt_BR>Catalão Pacote de Idioma para o LibreOffice</pt_BR>
   <pt>Catalão Meta-Pacote de Idioma para LibreOffice</pt>
   <ro>Catalan LibreOffice Language Meta-Package</ro>
   <ru>Мета-пакет каталонского языка для LibreOffice</ru>
   <sk>Catalan LibreOffice Language Meta-Package</sk>
   <sl>Katalonski jezikovni metapaket za LibreOffice</sl>
   <sq>Meta-Paketë gjuhësore në katalanisht për LibreOffice-in</sq>
   <sr>Catalan LibreOffice Language Meta-Package</sr>
   <sv>Katalansk LibreOffice Språk-Meta-Paket</sv>
   <tr>LibreOffice için Katalanca Dili Üst-Paketi</tr>
   <uk>мета-пакунок з мовою Catalan для LibreOffice</uk>
   <vi>Catalan LibreOffice Language Meta-Package</vi>
   <zh_CN>Catalan LibreOffice Language Meta-Package</zh_CN>
   <zh_TW>Catalan LibreOffice Language Meta-Package</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>


<preinstall>

package_list="
libreoffice-l10n-ca
libreoffice-help-ca
"
lo-installer.sh $package_list
apt-get update -o=Dpkg::Use-Pty=0 -o Acquire::http:Timeout=10 -o Acquire::https:Timeout=10 -o Acquire::ftp:Timeout=10

</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
libreoffice-l10n-ca
libreoffice-help-ca
</uninstall_package_names>
</app>
