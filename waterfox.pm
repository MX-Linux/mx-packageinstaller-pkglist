<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>
Waterfox
</name>

<description>
   <am>alternative mozilla-based browser</am>
   <ca>Navegador alternatiu basat en Mozilla</ca>
   <cs>alternative mozilla-based browser</cs>
   <de>Alternativer Mozilla-basierter Browser</de>
   <el>alternative mozilla-based browser</el>
   <en>alternative mozilla-based browser</en>
   <es>alternative mozilla-based browser</es>
   <fi>alternative mozilla-based browser</fi>
   <fr>Navigateur alternatif basé sur Mozilla</fr>
   <hi>alternative mozilla-based browser</hi>
   <hr>alternative mozilla-based browser</hr>
   <hu>alternative mozilla-based browser</hu>
   <it>browser alternativo basato su mozilla</it>
   <ja>alternative mozilla-based browser</ja>
   <kk>alternative mozilla-based browser</kk>
   <lt>alternative mozilla-based browser</lt>
   <nl>alternatieve op mozilla gebaseerde browser</nl>
   <pl>alternative mozilla-based browser</pl>
   <pt_BR>Navegador web alternativo baseado em código da Mozilla</pt_BR>
   <pt>Navegador web alternativo baseado no firefox da Mozilla</pt>
   <ro>alternative mozilla-based browser</ro>
   <ru>alternative mozilla-based browser</ru>
   <sk>alternative mozilla-based browser</sk>
   <sv>alternativ mozilla-baserad webbläsare</sv>
   <tr>alternative mozilla-based browser</tr>
   <uk>alternative mozilla-based browser</uk>
   <zh_TW>alternative mozilla-based browser</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>https://www.waterfoxproject.org/media/img/waterfox/products/desktop/waterfox-browser.40990c516643.svg</screenshot>

<preinstall>
echo "deb https://dl.bintray.com/hawkeye116477/waterfox-deb release main">/etc/apt/sources.list.d/waterfox.list
curl https://bintray.com/user/downloadSubjectPublicKey?username=hawkeye116477 | sudo apt-key add -
apt-get update
</preinstall>

<install_package_names>
waterfox
</install_package_names>


<postinstall>
apt-get install waterfox-locale-$(locale |grep LANG|cut -d= -f2 |cut -d_ -f1)
</postinstall>


<uninstall_package_names>
waterfox
</uninstall_package_names>
</app>
