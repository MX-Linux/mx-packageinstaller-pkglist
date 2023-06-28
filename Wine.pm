<?xml version="1.0" encoding="UTF-8"?>
<app>

<category>
Misc
</category>

<name>
Wine
</name>

<description>
   <am>run Windows applications without a copy of Microsoft Windows</am>
   <ar>run Windows applications without a copy of Microsoft Windows</ar>
   <bg>run Windows applications without a copy of Microsoft Windows</bg>
   <bn>run Windows applications without a copy of Microsoft Windows</bn>
   <ca>Executa aplicacions Windows sense una còpia de MS-Windows</ca>
   <cs>run Windows applications without a copy of Microsoft Windows</cs>
   <da>kør Windows-programmer uden en kopi af Microsoft Windows</da>
   <de>Ausführen von Windows-Anwendungen ohne eine Kopie von Microsoft Windows</de>
   <el>Εκτέλεση εφαρμογών των Windows</el>
   <en>run Windows applications without a copy of Microsoft Windows</en>
   <es>ejecute aplicaciones de Windows sin una copia de Microsoft Windows</es>
   <et>run Windows applications without a copy of Microsoft Windows</et>
   <eu>run Windows applications without a copy of Microsoft Windows</eu>
   <fa>run Windows applications without a copy of Microsoft Windows</fa>
   <fil_PH>run Windows applications without a copy of Microsoft Windows</fil_PH>
   <fi>aja Windows-sovelluksia ilman Microsoft Windows:ia</fi>
   <fr>Lancer des applications Windows sans avoir besoin d’installer Windows</fr>
   <he_IL>run Windows applications without a copy of Microsoft Windows</he_IL>
   <hi>माइक्रोसॉफ्ट विंडोज के बिना ही विंडोज अनुप्रयोग निष्पादित करें</hi>
   <hr>run Windows applications without a copy of Microsoft Windows</hr>
   <hu>run Windows applications without a copy of Microsoft Windows</hu>
   <id>run Windows applications without a copy of Microsoft Windows</id>
   <is>run Windows applications without a copy of Microsoft Windows</is>
   <it>esegue applicazioni Windows senza la presenza del sistema operativo Microsoft Windows</it>
   <ja>Windows のコピーなしで Windows アプリケーションを実行します</ja>
   <kk>run Windows applications without a copy of Microsoft Windows</kk>
   <ko>run Windows applications without a copy of Microsoft Windows</ko>
   <lt>run Windows applications without a copy of Microsoft Windows</lt>
   <mk>run Windows applications without a copy of Microsoft Windows</mk>
   <mr>run Windows applications without a copy of Microsoft Windows</mr>
   <nb>kjør Windows-programmer uten å ha Microsoft Windows installert</nb>
   <nl>Windowstoepassingen uitvoeren zonder een exemplaar van Microsoft Windows</nl>
   <pl>uruchamiaj aplikacje Windows bez kopii systemu Microsoft Windows</pl>
   <pt_BR>Executa aplicativos para Windows sem precisar de uma cópia do Microsoft Windows</pt_BR>
   <pt>Executar aplicações para Windows sem precisar do Microsoft Windows</pt>
   <ro>run Windows applications without a copy of Microsoft Windows</ro>
   <ru>Запуск приложений для Windows в окружении GNU/Linux</ru>
   <sk>run Windows applications without a copy of Microsoft Windows</sk>
   <sl>Poženite Windows aplikacije brez kopije Microsoft Windows</sl>
   <sq>xhironi aplikacione Windows pa kopje të Microsoft Windows-it</sq>
   <sr>run Windows applications without a copy of Microsoft Windows</sr>
   <sv>kör Windows applikationer utan Microsoft Windows</sv>
   <tr>Microsoft Windows'un kopyası olmadan Windows uygulamalarını çalıştırma</tr>
   <uk>run Windows applications without a copy of Microsoft Windows</uk>
   <vi>run Windows applications without a copy of Microsoft Windows</vi>
   <zh_CN>run Windows applications without a copy of Microsoft Windows</zh_CN>
   <zh_TW>run Windows applications without a copy of Microsoft Windows</zh_TW>
</description>

<installable>
32,64
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
winehq-staging
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/run_winecfg.sh
</postinstall>


<uninstall_package_names>
winehq-staging
</uninstall_package_names>

<postuninstall>
apt-get remove wine-*
</postuninstall>

</app>

