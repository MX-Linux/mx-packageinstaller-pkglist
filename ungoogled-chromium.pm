<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>
unGoogled Chromium
</name>

<description>
   <am>ungoogled chromium browser (third party)</am>
   <ar>ungoogled chromium browser (third party)</ar>
   <bg>ungoogled chromium browser (third party)</bg>
   <bn>ungoogled chromium browser (third party)</bn>
   <ca>ungoogled chromium browser (third party)</ca>
   <cs>ungoogled chromium browser (third party)</cs>
   <da>ungoogled chromium browser (third party)</da>
   <de>ungoogled chromium browser (third party)</de>
   <el>ungoogled chromium browser (third party)</el>
   <en>ungoogled chromium browser (third party)</en>
   <es>ungoogled chromium browser (third party)</es>
   <et>ungoogled chromium browser (third party)</et>
   <eu>ungoogled chromium browser (third party)</eu>
   <fa>ungoogled chromium browser (third party)</fa>
   <fil_PH>ungoogled chromium browser (third party)</fil_PH>
   <fi>ungoogled chromium browser (third party)</fi>
   <fr>ungoogled chromium browser (third party)</fr>
   <he_IL>ungoogled chromium browser (third party)</he_IL>
   <hi>ungoogled chromium browser (third party)</hi>
   <hr>ungoogled chromium browser (third party)</hr>
   <hu>ungoogled chromium browser (third party)</hu>
   <id>ungoogled chromium browser (third party)</id>
   <is>ungoogled chromium browser (third party)</is>
   <it>ungoogled chromium browser (third party)</it>
   <ja>ungoogled chromium browser (third party)</ja>
   <kk>ungoogled chromium browser (third party)</kk>
   <ko>ungoogled chromium browser (third party)</ko>
   <lt>ungoogled chromium browser (third party)</lt>
   <mk>ungoogled chromium browser (third party)</mk>
   <mr>ungoogled chromium browser (third party)</mr>
   <nb>ungoogled chromium browser (third party)</nb>
   <nl>ungoogled chromium browser (third party)</nl>
   <pl>ungoogled chromium browser (third party)</pl>
   <pt_BR>ungoogled chromium browser (third party)</pt_BR>
   <pt>ungoogled chromium browser (third party)</pt>
   <ro>ungoogled chromium browser (third party)</ro>
   <ru>ungoogled chromium browser (third party)</ru>
   <sk>ungoogled chromium browser (third party)</sk>
   <sl>ungoogled chromium browser (third party)</sl>
   <sq>ungoogled chromium browser (third party)</sq>
   <sr>ungoogled chromium browser (third party)</sr>
   <sv>ungoogled chromium browser (third party)</sv>
   <tr>ungoogled chromium browser (third party)</tr>
   <uk>ungoogled chromium browser (third party)</uk>
   <vi>ungoogled chromium browser (third party)</vi>
   <zh_CN>ungoogled chromium browser (third party)</zh_CN>
   <zh_TW>ungoogled chromium browser (third party)</zh_TW>
</description>

<installable>
64
</installable>

<screenshot></screenshot>

<preinstall>
echo 'deb http://download.opensuse.org/repositories/home:/ungoogled_chromium/Debian_Buster/ /' | sudo tee /etc/apt/sources.list.d/ungoogled_chromium.list
wget -nv https://download.opensuse.org/repositories/home:ungoogled_chromium/Debian_Buster/Release.key -O "/etc/apt/trusted.gpg.d/home:ungoogled_chromium.asc"
apt-get update
</preinstall>

<install_package_names>
ungoogled-chromium
</install_package_names>


<postinstall>
</postinstall>


<uninstall_package_names>
ungoogled-chromium
</uninstall_package_names>
</app>
