<?xml version="1.0"?>
<app>

<category>
Remote Access
</category>

<name>
Nomachine
</name>

<description>
   <am>Cross Platform Remote Access Software</am>
   <ca>Programari d'accés remot multiplataforma</ca>
   <cs>Cross Platform Remote Access Software</cs>
   <de>Plattformübergreifende Remote Access Software</de>
   <el>Cross Platform Remote Access Software</el>
   <en>Cross Platform Remote Access Software</en>
   <es>Cross Platform Remote Access Software</es>
   <fi>Cross Platform Remote Access Software</fi>
   <fr>Logiciel d'accès à distance entre appareils</fr>
   <hi>Cross Platform Remote Access Software</hi>
   <hr>Cross Platform Remote Access Software</hr>
   <hu>Cross Platform Remote Access Software</hu>
   <it>Software di accesso remoto multipiattaforma</it>
   <ja>Cross Platform Remote Access Software</ja>
   <kk>Cross Platform Remote Access Software</kk>
   <lt>Cross Platform Remote Access Software</lt>
   <nl>Cross Platform Op Afstand Toegankelijk Software</nl>
   <pl>Cross Platform Remote Access Software</pl>
   <pt_BR>Cross Platform Remote Access Software</pt_BR>
   <pt>Software multi-plataforma para Acesso Remoto  </pt>
   <ro>Cross Platform Remote Access Software</ro>
   <ru>Cross Platform Remote Access Software</ru>
   <sk>Cross Platform Remote Access Software</sk>
   <sv>Plattformsoberoende Fjärråtkomst-mjukvara</sv>
   <tr>Cross Platform Remote Access Software</tr>
   <uk>Cross Platform Remote Access Software</uk>
   <zh_TW>Cross Platform Remote Access Software</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>https://www.nomachine.com/sites/all/themes/frontend/images/tutorial1/tutorial_1.jpg</screenshot>

<preinstall>
/usr/share/mx-packageinstaller-pkglist/download_nomachine.sh
apt install /tmp/nomachine.deb
rm /tmp/nomachine.deb
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
nomachine
</uninstall_package_names>
</app>
