<?xml version="1.0"?>
<app>

<category>
Media Center
</category>

<name>
Plex
</name>

<description>
   <am>Polish localisation of Firefox</am>
   <ar>Polish localisation of Firefox</ar>
   <bg>Polish localisation of Firefox</bg>
   <ca>Localització de Firefox en Polonès</ca>
   <cs>Polish localisation of Firefox</cs>
   <da>Polsk oversættelse af Firefox</da>
   <de>Polnische Lokalisierung von Firefox</de>
   <el>Πολωνική εντοπισμός του Firefox</el>
   <en>Polish localisation of Firefox</en>
   <es>Localización Polaca de Firefox</es>
   <et>Polish localisation of Firefox</et>
   <eu>Polish localisation of Firefox</eu>
   <fa>Polish localisation of Firefox</fa>
   <fil_PH>Polish localisation of Firefox</fil_PH>
   <fi>Polish localisation of Firefox</fi>
   <fr>Localisation polonaise pour Firefox</fr>
   <he_IL>Polish localisation of Firefox</he_IL>
   <hi>Polish localisation of Firefox</hi>
   <hr>Polish localisation of Firefox</hr>
   <hu>Polish localisation of Firefox</hu>
   <id>Polish localisation of Firefox</id>
   <is>Polish localisation of Firefox</is>
   <it>Localizzazione polacca di Firefox</it>
   <ja_JP>Polish localisation of Firefox</ja_JP>
   <ja>Polish localisation of Firefox</ja>
   <kk>Polish localisation of Firefox</kk>
   <ko>Polish localisation of Firefox</ko>
   <lt>Polish localisation of Firefox</lt>
   <mk>Polish localisation of Firefox</mk>
   <mr>Polish localisation of Firefox</mr>
   <nb>Polish localisation of Firefox</nb>
   <nl>Poolse lokalisatie van Firefox</nl>
   <pl>Polska lokalizacja przeglądarki Firefox</pl>
   <pt_BR>Polonês Localização para Firefox</pt_BR>
   <pt>Polaco Localização para Firefox</pt>
   <ro>Polish localisation of Firefox</ro>
   <ru>Польская локализация Firefox</ru>
   <sk>Polish localisation of Firefox</sk>
   <sl>Polish localisation of Firefox</sl>
   <sq>Polish localisation of Firefox</sq>
   <sr>Polish localisation of Firefox</sr>
   <sv>Polsk lokalisering av Firefox</sv>
   <tr>Firefox'un Lehçe yerelleştirmesi</tr>
   <uk>Polish локалізація Firefox</uk>
   <zh_CN>Polish localisation of Firefox</zh_CN>
   <zh_TW>Polish localisation of Firefox</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>https://www.plex.tv/wp-content/uploads/2016/06/image-block-plex-media-server-macbook.jpg</screenshot>

<preinstall>
apt-get install apt-transport-https
curl https://downloads.plex.tv/plex-keys/PlexSign.key | apt-key add -
echo "deb https://downloads.plex.tv/repo/deb public main">/etc/apt/sources.list.d/mxpitemp.list
apt-get update
</preinstall>

<install_package_names>
plexmediaserver
</install_package_names>


<postinstall>
if [ -x /usr/sbin/start_pms ]; then
apt-get install plex-sysvinit-compat
fi
</postinstall>


<uninstall_package_names>
plexmediaserver
plex-sysvinit-compat
</uninstall_package_names>
</app>
