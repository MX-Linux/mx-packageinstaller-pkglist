<?xml version="1.0"?>
<app>

<category>
Office
</category>

<name>
Master PDF Editor (Free Version)
</name>

<description>
   <am>basic install of MATE desktop</am>
   <ar>basic install of MATE desktop</ar>
   <bg>basic install of MATE desktop</bg>
   <ca>Instal·lació bàsica de l'escriptori MATE</ca>
   <cs>basic install of MATE desktop</cs>
   <da>grundlæggende installation af MATE-skrivebordet</da>
   <de>Basisinstallation von MATE Desktop</de>
   <el>βασική εγκατάσταση της επιφάνειας εργασίας MATE</el>
   <en>basic install of MATE desktop</en>
   <es>Instalación mínima del escritorio MATE</es>
   <et>basic install of MATE desktop</et>
   <eu>basic install of MATE desktop</eu>
   <fa>basic install of MATE desktop</fa>
   <fil_PH>basic install of MATE desktop</fil_PH>
   <fi>basic install of MATE desktop</fi>
   <fr>Installation de base du bureau MATE</fr>
   <he_IL>basic install of MATE desktop</he_IL>
   <hi>basic install of MATE desktop</hi>
   <hr>basic install of MATE desktop</hr>
   <hu>basic install of MATE desktop</hu>
   <id>basic install of MATE desktop</id>
   <is>basic install of MATE desktop</is>
   <it>installazione base del desktop MATE</it>
   <ja_JP>basic install of MATE desktop</ja_JP>
   <ja>basic install of MATE desktop</ja>
   <kk>basic install of MATE desktop</kk>
   <ko>basic install of MATE desktop</ko>
   <lt>basic install of MATE desktop</lt>
   <mk>basic install of MATE desktop</mk>
   <mr>basic install of MATE desktop</mr>
   <nb>basic install of MATE desktop</nb>
   <nl>basisinstallatie van de MATE desktop</nl>
   <pl>podstawowa instalacja środowiska MATE</pl>
   <pt_BR>Instalação básica do Ambiente de Trabalho MATE</pt_BR>
   <pt>Instalação básica do Ambiente de Trabalho MATE</pt>
   <ro>basic install of MATE desktop</ro>
   <ru>Базовая установка окружения MATE</ru>
   <sk>basic install of MATE desktop</sk>
   <sl>Osnovna namestitev MATE namizja</sl>
   <sq>basic install of MATE desktop</sq>
   <sr>basic install of MATE desktop</sr>
   <sv>enkel installation av MATE skrivbord</sv>
   <tr>basic install of MATE desktop</tr>
   <uk>базовий набір стільниці MATE</uk>
   <zh_CN>basic install of MATE desktop</zh_CN>
   <zh_TW>basic install of MATE desktop</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>https://code-industry.net/wp-content/uploads/2016/05/pdfa-edit.png</screenshot>

<preinstall>
curl -RL $(curl -s https://code-industry.net/free-pdf-editor/ | grep -Eo https://[^[:space:]]*$(dpkg --print-architecture).deb) -o /tmp/master_pdf.deb
apt install /tmp/master_pdf.deb
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
