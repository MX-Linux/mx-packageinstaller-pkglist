<?xml version="1.0"?>
<app>

<category>
Messaging
</category>

<name>
Discord
</name>

<description>
   <am>All-in-one voice and text chat for gamers</am>
   <ca>All-in-one voice and text chat for gamers</ca>
   <cs>All-in-one voice and text chat for gamers</cs>
   <de>All-in-one voice and text chat for gamers</de>
   <el>All-in-one voice and text chat for gamers</el>
   <en>All-in-one voice and text chat for gamers</en>
   <es>All-in-one voice and text chat for gamers</es>
   <fi>All-in-one voice and text chat for gamers</fi>
   <fr>All-in-one voice and text chat for gamers</fr>
   <hi>All-in-one voice and text chat for gamers</hi>
   <hr>All-in-one voice and text chat for gamers</hr>
   <hu>All-in-one voice and text chat for gamers</hu>
   <it>All-in-one voice and text chat for gamers</it>
   <ja>All-in-one voice and text chat for gamers</ja>
   <kk>All-in-one voice and text chat for gamers</kk>
   <lt>All-in-one voice and text chat for gamers</lt>
   <nl>All-in-one voice and text chat for gamers</nl>
   <pl>All-in-one voice and text chat for gamers</pl>
   <pt_BR>All-in-one voice and text chat for gamers</pt_BR>
   <pt>All-in-one voice and text chat for gamers</pt>
   <ro>All-in-one voice and text chat for gamers</ro>
   <ru>All-in-one voice and text chat for gamers</ru>
   <sk>All-in-one voice and text chat for gamers</sk>
   <sv>All-in-one voice and text chat for gamers</sv>
   <tr>All-in-one voice and text chat for gamers</tr>
   <uk>All-in-one voice and text chat for gamers</uk>
   <zh_TW>All-in-one voice and text chat for gamers</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
/usr/share/mx-packageinstaller-pkglist/download_discord.sh
apt-get install /tmp/discord.deb
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>
rm /tmp/discord.deb
</postinstall>


<uninstall_package_names>
discord
</uninstall_package_names>
</app>
