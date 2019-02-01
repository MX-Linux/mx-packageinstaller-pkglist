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
   <ar>Plex Mediaserver (includes web client)(requires reboot after install)</ar>
   <bg>Plex Mediaserver (includes web client)(requires reboot after install)</bg>
   <ca>Mediaserver Plex (inclou client web; cal rearrencar després d'instal·lar)</ca>
   <cs>Plex Mediaserver (includes web client)(requires reboot after install)</cs>
   <da>Plex-medieserver (inkluderer webklient)(kræver genstart efter installation)</da>
   <de>Plex Mediaserver (inkl. Web-Client)(erfordert Neustart nach der Installation)</de>
   <el>Plex Media Server (περιλαμβάνει web client) (απαιτεί επανεκκίνηση μετά την εγκατάσταση)</el>
   <en>Plex Mediaserver (includes web client)(requires reboot after install)</en>
   <es>Plex Mediaserver (includes web client)(requires reboot after install)</es>
   <et>Plex Mediaserver (includes web client)(requires reboot after install)</et>
   <eu>Plex Mediaserver (includes web client)(requires reboot after install)</eu>
   <fa>Plex Mediaserver (includes web client)(requires reboot after install)</fa>
   <fi>Plex Mediaserver (includes web client)(requires reboot after install)</fi>
   <fr>Plex Mediaserver (client web inclus)(nécessite un re-démarrage après installation)</fr>
   <he_IL>Plex Mediaserver (includes web client)(requires reboot after install)</he_IL>
   <hi>Plex Mediaserver (includes web client)(requires reboot after install)</hi>
   <hr>Plex Mediaserver (includes web client)(requires reboot after install)</hr>
   <hu>Plex Mediaserver (includes web client)(requires reboot after install)</hu>
   <id>Plex Mediaserver (includes web client)(requires reboot after install)</id>
   <is>Plex Mediaserver (includes web client)(requires reboot after install)</is>
   <it>Plex Mediaserver (include un client web)(richiede un reboot dopo l'installazione)</it>
   <ja_JP>Plex Mediaserver (includes web client)(requires reboot after install)</ja_JP>
   <ja>Plex Mediaserver (includes web client)(requires reboot after install)</ja>
   <kk>Plex Mediaserver (includes web client)(requires reboot after install)</kk>
   <ko>Plex Mediaserver (includes web client)(requires reboot after install)</ko>
   <lt>Plex Mediaserver (includes web client)(requires reboot after install)</lt>
   <mk>Plex Mediaserver (includes web client)(requires reboot after install)</mk>
   <nb>Plex Mediaserver (includes web client)(requires reboot after install)</nb>
   <nl>Plex Mediaserver (inclusief webcliënt) (moet na installatie opnieuw worden opgestart)</nl>
   <pl>Plex Mediaserver (includes web client)(requires reboot after install)</pl>
   <pt_BR>Plex Mediaserver (includes web client)(requires reboot after install)</pt_BR>
   <pt>Servidor multimédia Plex; inclui cliente de web; requere reinício do computador após a instalação</pt>
   <ro>Plex Mediaserver (includes web client)(requires reboot after install)</ro>
   <ru>Медиасервер Plex (включает веб клиент) (после установки требуется перезагрузка)</ru>
   <sk>Plex Mediaserver (includes web client)(requires reboot after install)</sk>
   <sl>Plex Mediaserver (includes web client)(requires reboot after install)</sl>
   <sq>Plex Mediaserver (includes web client)(requires reboot after install)</sq>
   <sr>Plex Mediaserver (includes web client)(requires reboot after install)</sr>
   <sv>Plex Mediaserver (inkluderar webbklient)(kräver omstart efter installation)</sv>
   <tr>Plex Mediaserver (includes web client)(requires reboot after install)</tr>
   <uk>Plex Mediaserver (includes web client)(requires reboot after install)</uk>
   <zh_CN>Plex Mediaserver (includes web client)(requires reboot after install)</zh_CN>
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
