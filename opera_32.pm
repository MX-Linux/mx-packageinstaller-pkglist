<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>
Opera
</name>

<description>
   <am>Opera browser (32 bit is beta-only)</am>
   <ca>Navegador Opera (32 bit només beta)</ca>
   <cs>Opera browser (32 bit is beta-only)</cs>
   <da>Opera browser (32 bit is beta-only)</da>
   <de>Opera-Browser (32 Bit ist nur Beta-Version)</de>
   <el>Πρόγραμμα περιήγησης Opera (32 bit είναι μόνο beta)</el>
   <en>Opera browser (32 bit is beta-only)</en>
   <es>Opera browser (32 bit is beta-only)</es>
   <fi>Opera browser (32 bit is beta-only)</fi>
   <fr>Navigateur Opera (32 bit en beta uniquement)</fr>
   <hi>Opera browser (32 bit is beta-only)</hi>
   <hr>Opera browser (32 bit is beta-only)</hr>
   <hu>Opera browser (32 bit is beta-only)</hu>
   <is>Opera browser (32 bit is beta-only)</is>
   <it>Opera browser (a 32 bit è esclusivamente-beta)</it>
   <ja>Opera browser (32 bit is beta-only)</ja>
   <kk>Opera browser (32 bit is beta-only)</kk>
   <lt>Opera naršyklė (32 bitų yra tik beta versija)</lt>
   <nl>Opera browser (32 bit is enkel-beta)</nl>
   <pl>Opera browser (32 bit is beta-only)</pl>
   <pt_BR>Opera browser (32 bit is beta-only)</pt_BR>
   <pt>Navegador web Opera (32 bit is beta-only)</pt>
   <ro>Opera browser (32 bit is beta-only)</ro>
   <ru>Браузер Opera (32 bit бета-версия)</ru>
   <sk>Opera browser (32 bit is beta-only)</sk>
   <sq>Opera browser (32 bit is beta-only)</sq>
   <sv>Opera webbläsare (32 bit är enbart i beta)</sv>
   <tr>Opera browser (32 bit is beta-only)</tr>
   <uk>Opera browser (32 bit is beta-only)</uk>
   <zh_TW>Opera browser (32 bit is beta-only)</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>http://www-static.operacdn.com/static-heap/e3/e3be37900045a27590062000a1e380e005644b8a/linux.png</screenshot>

<preinstall>
sed -i -r '/opera.com/ s/^#+//' /etc/apt/sources.list.d/various.list
wget -O - http://deb.opera.com/archive.key | apt-key add -
apt-get update
</preinstall>

<install_package_names>
opera-beta
</install_package_names>


<postinstall>
if [ -f /etc/apt/sources.list.d/opera-stable.list ]; then sed -i -r '/opera.com/ s/^([^#])/#\1/' /etc/apt/sources.list.d/various.list;apt-get update; fi
</postinstall>


<uninstall_package_names>
opera-beta
</uninstall_package_names>
</app>
