<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>
Google Chrome
</name>

<description>
   <am>Latest Google Chrome browser (stable)</am>
   <ca>Darrer navegador Chrome (estable)</ca>
   <cs>Latest Google Chrome browser (stable)</cs>
   <de>Aktueller Google Chrome-Browser (stabil)</de>
   <el>Latest Google Chrome browser (stable)</el>
   <en>Latest Google Chrome browser (stable)</en>
   <es>Latest Google Chrome browser (stable)</es>
   <fi>Latest Google Chrome browser (stable)</fi>
   <fr>La dernière version de Google Chrome (stable)</fr>
   <hi>Latest Google Chrome browser (stable)</hi>
   <hr>Latest Google Chrome browser (stable)</hr>
   <hu>Latest Google Chrome browser (stable)</hu>
   <it>Ultima versione (stabile) del browser Google Chrome</it>
   <ja>Latest Google Chrome browser (stable)</ja>
   <kk>Latest Google Chrome browser (stable)</kk>
   <lt>Latest Google Chrome browser (stable)</lt>
   <nl>Meest recente Chrome browser (stable)</nl>
   <pl>Latest Google Chrome browser (stable)</pl>
   <pt_BR>Latest Google Chrome browser (stable)</pt_BR>
   <pt>Versão mais recente (estável) do navegador web Google Chrome</pt>
   <ro>Latest Google Chrome browser (stable)</ro>
   <ru>Latest Google Chrome browser (stable)</ru>
   <sk>Latest Google Chrome browser (stable)</sk>
   <sv>SenasteGoogle Chrome webbläsare (stable)</sv>
   <tr>Latest Google Chrome browser (stable)</tr>
   <uk>Latest Google Chrome browser (stable)</uk>
   <zh_TW>Latest Google Chrome browser (stable)</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>https://www.google.com/chrome/assets/common/images/marquee/chrome-new.jpg</screenshot>

<preinstall>
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main">/etc/apt/sources.list.d/mxpitemp.list
apt-get update
</preinstall>

<install_package_names>
google-chrome-stable
</install_package_names>


<postinstall>
rm /etc/apt/sources.list.d/mxpitemp.list
</postinstall>


<uninstall_package_names>
google-chrome-stable
</uninstall_package_names>
</app>
