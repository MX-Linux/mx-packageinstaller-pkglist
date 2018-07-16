<?xml version="1.0"?>
<app>

<category>
Media Center
</category>

<name>
Plex
</name>

<description>
   <am>Plex Mediaserver (includes web client)(requires reboot after install)</am>
   <ca>Plex Mediaserver (includes web client)(requires reboot after install)</ca>
   <cs>Plex Mediaserver (includes web client)(requires reboot after install)</cs>
   <de>Plex Mediaserver (inkl. Web-Client)(erfordert Neustart nach der Installation)</de>
   <el>Plex Mediaserver (includes web client)(requires reboot after install)</el>
   <en>Plex Mediaserver (includes web client)(requires reboot after install)</en>
   <es>Plex Mediaserver (includes web client)(requires reboot after install)</es>
   <fi>Plex Mediaserver (includes web client)(requires reboot after install)</fi>
   <fr>Plex Mediaserver (includes web client)(requires reboot after install)</fr>
   <hi>Plex Mediaserver (includes web client)(requires reboot after install)</hi>
   <hr>Plex Mediaserver (includes web client)(requires reboot after install)</hr>
   <hu>Plex Mediaserver (includes web client)(requires reboot after install)</hu>
   <it>Plex Mediaserver (includes web client)(requires reboot after install)</it>
   <ja>Plex Mediaserver (includes web client)(requires reboot after install)</ja>
   <kk>Plex Mediaserver (includes web client)(requires reboot after install)</kk>
   <lt>Plex Mediaserver (includes web client)(requires reboot after install)</lt>
   <nl>Plex Mediaserver (includes web client)(requires reboot after install)</nl>
   <pl>Plex Mediaserver (includes web client)(requires reboot after install)</pl>
   <pt_BR>Plex Mediaserver (includes web client)(requires reboot after install)</pt_BR>
   <pt>Plex Mediaserver (includes web client)(requires reboot after install)</pt>
   <ro>Plex Mediaserver (includes web client)(requires reboot after install)</ro>
   <ru>Plex Mediaserver (includes web client)(requires reboot after install)</ru>
   <sk>Plex Mediaserver (includes web client)(requires reboot after install)</sk>
   <sv>Plex Mediaserver (inkluderar webbklient)(kräver omstart efter installation)</sv>
   <tr>Plex Mediaserver (includes web client)(requires reboot after install)</tr>
   <uk>Plex Mediaserver (includes web client)(requires reboot after install)</uk>
   <zh_TW>Plex Mediaserver (includes web client)(requires reboot after install)</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>https://www.plex.tv/wp-content/uploads/2016/06/image-block-plex-media-server-macbook.jpg</screenshot>

<preinstall>
apt-get install apt-transport-https
curl https://downloads.plex.tv/plex-keys/PlexSign.key | apt-key add -
echo "deb https://downloads.plex.tv/repo/deb ./public main">/etc/apt/sources.list.d/plex.list
apt-get update
</preinstall>

<install_package_names>
plexmediaserver
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/plex.list
cp /usr/share/mx-packageinstaller-pkglist/plex_stuff/default/plexmediaserver /etc/default/plexmediaserver
chown -R plex:plex /var/lib/plexmediaserver/
cp /usr/share/mx-packageinstaller-pkglist/plex_stuff/init/plexserver /etc/init.d/plexserver
chmod a+x /etc/init.d/plexserver
ln -fs /etc/init.d/plexserver /etc/init.d/plexmediaserver
update-rc.d plexserver defaults
</postinstall>


<uninstall_package_names>
plexmediaserver
</uninstall_package_names>
</app>
