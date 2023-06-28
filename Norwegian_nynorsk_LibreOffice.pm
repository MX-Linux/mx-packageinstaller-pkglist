<?xml version="1.0" encoding="UTF-8"?>
<app>

<category>
Language
</category>

<name>
Norwegian_nynorsk_Libreoffice
</name>

<description>
   <am>Norwegian_nynorsk Language Meta-Package for LibreOffice</am>
   <ar>Norwegian_nynorsk Language Meta-Package for LibreOffice</ar>
   <bg>Norwegian_nynorsk Language Meta-Package for LibreOffice</bg>
   <bn>Norwegian_nynorsk Language Meta-Package for LibreOffice</bn>
   <ca>Metapaquet d'idioma Noruec-nynorsk per LibreOffice</ca>
   <cs>Norwegian_nynorsk Language Meta-Package for LibreOffice</cs>
   <da>Norwegian_nynorsk Language Meta-Package for LibreOffice</da>
   <de>Norwegisches (Nynorsk) Meta-Paket für LibreOffice</de>
   <el>LibreOffice στα Νορβηγική Nynorsk</el>
   <en>Norwegian_nynorsk Language Meta-Package for LibreOffice</en>
   <es>Paquete de idioma noruego para LibreOffice</es>
   <et>Norwegian_nynorsk Language Meta-Package for LibreOffice</et>
   <eu>Norwegian_nynorsk Language Meta-Package for LibreOffice</eu>
   <fa>Norwegian_nynorsk Language Meta-Package for LibreOffice</fa>
   <fil_PH>Norwegian_nynorsk Language Meta-Package for LibreOffice</fil_PH>
   <fi>Uusinorjalainen kielipaketti LibreOffice:lle</fi>
   <fr>Méta-Paquet en langue norvégienne nynorsk pour LibreOffice</fr>
   <he_IL>Norwegian_nynorsk Language Meta-Package for LibreOffice</he_IL>
   <hi>लिब्रे-ऑफिस हेतु नॉर्वेजियाई_नाइनोर्स्क भाषा मेटा-पैकेज</hi>
   <hr>Norwegian_nynorsk Language Meta-Package for LibreOffice</hr>
   <hu>Norwegian_nynorsk Language Meta-Package for LibreOffice</hu>
   <id>Norwegian_nynorsk Language Meta-Package for LibreOffice</id>
   <is>Norwegian_nynorsk Language Meta-Package for LibreOffice</is>
   <it>Meta-pacchetto della lingua norvegese_nynorsk per LibreOffice</it>
   <ja>LibreOffice 用のニーノシュク語メタパッケージ</ja>
   <kk>Norwegian_nynorsk Language Meta-Package for LibreOffice</kk>
   <ko>Norwegian_nynorsk Language Meta-Package for LibreOffice</ko>
   <lt>Norwegian_nynorsk Language Meta-Package for LibreOffice</lt>
   <mk>Norwegian_nynorsk Language Meta-Package for LibreOffice</mk>
   <mr>Norwegian_nynorsk Language Meta-Package for LibreOffice</mr>
   <nb>Norsk nynorsk språkpakke for LibreOffice</nb>
   <nl>Noors Taal Meta-Pakket voor LibreOffice</nl>
   <pl>Meta-pakiet języka norweskiego nynorsk (nowonorweskiego) dla LibreOffice</pl>
   <pt_BR>Novo Norueguês Pacote de Idioma para o LibreOffice</pt_BR>
   <pt>Norueguês nynorsk Meta-Pacote de Idioma para LibreOffice</pt>
   <ro>Norwegian_nynorsk Language Meta-Package for LibreOffice</ro>
   <ru>Мета-пакет норвежского языка нюнорск для LibreOffice</ru>
   <sk>Norwegian_nynorsk Language Meta-Package for LibreOffice</sk>
   <sl>Norveški nynorsk jezikovni meta-paket za LibreOffice</sl>
   <sq>Meta-Paketë gjuhësore në norvegjishte nynorsk për LibreOffice-in</sq>
   <sr>Norwegian_nynorsk Language Meta-Package for LibreOffice</sr>
   <sv>Norsk_nynorsk Språk Meta-Paket för LibreOffice</sv>
   <tr>LibreOffice için Yeni Norveççe Dili Üst-Paketi</tr>
   <uk>Norwegian_nynorsk Language Meta-Package for LibreOffice</uk>
   <vi>Norwegian_nynorsk Language Meta-Package for LibreOffice</vi>
   <zh_CN>Norwegian_nynorsk Language Meta-Package for LibreOffice</zh_CN>
   <zh_TW>Norwegian_nynorsk Language Meta-Package for LibreOffice</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>


<preinstall>

package_list="
libreoffice-l10n-nn
"
lo-installer.sh $package_list
apt-get update -o=Dpkg::Use-Pty=0 -o Acquire::http:Timeout=10 -o Acquire::https:Timeout=10 -o Acquire::ftp:Timeout=10

</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
libreoffice-l10n-nn
</uninstall_package_names>
</app>
