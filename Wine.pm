<?xml version="1.0"?>
<app>

<category>
Misc
</category>

<name>
Wine
</name>

<description>
   <am>run Windows applications without a copy of Microsoft Windows</am>
   <ca>Executa aplicacions Windows sense una còpia de MS-Windows</ca>
   <cs>run Windows applications without a copy of Microsoft Windows</cs>
   <de>Ausführen von Windows-Anwendungen ohne eine Kopie von Microsoft Windows</de>
   <el>run Windows applications without a copy of Microsoft Windows</el>
   <en>run Windows applications without a copy of Microsoft Windows</en>
   <es>run Windows applications without a copy of Microsoft Windows</es>
   <fi>run Windows applications without a copy of Microsoft Windows</fi>
   <fr>Lancer des applications Windows sans avoir besoin d'installer Windows</fr>
   <hi>run Windows applications without a copy of Microsoft Windows</hi>
   <hr>run Windows applications without a copy of Microsoft Windows</hr>
   <hu>run Windows applications without a copy of Microsoft Windows</hu>
   <it>esegue applicazioni Windows senza la presenza del sistema operativo Microsoft Windows</it>
   <ja>run Windows applications without a copy of Microsoft Windows</ja>
   <kk>run Windows applications without a copy of Microsoft Windows</kk>
   <lt>run Windows applications without a copy of Microsoft Windows</lt>
   <nl>Windowstoepassingen uitvoeren zonder een exemplaar van Microsoft Windows</nl>
   <pl>run Windows applications without a copy of Microsoft Windows</pl>
   <pt_BR>Executar aplicações para Windows sem precisar do Microsoft Windows</pt_BR>
   <pt>Executar aplicações para Windows sem precisar do Microsoft Windows</pt>
   <ro>run Windows applications without a copy of Microsoft Windows</ro>
   <ru>run Windows applications without a copy of Microsoft Windows</ru>
   <sk>run Windows applications without a copy of Microsoft Windows</sk>
   <sv>kör Windows applikationer utan Microsoft Windows</sv>
   <tr>run Windows applications without a copy of Microsoft Windows</tr>
   <uk>run Windows applications without a copy of Microsoft Windows</uk>
   <zh_TW>run Windows applications without a copy of Microsoft Windows</zh_TW>
</description>

<installable>
all
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
</app>
