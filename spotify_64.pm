<?xml version="1.0"?>
<app>

<category>
Audio
</category>

<name>
Spotify
</name>

<description>
   <am>Spotify from Spotify Testing Repo</am>
   <ar>Spotify from Spotify Testing Repo</ar>
   <bg>Spotify from Spotify Testing Repo</bg>
   <bn>Spotify from Spotify Testing Repo</bn>
   <ca>Spotify del dipòsit Spotify Testing</ca>
   <cs>Spotify from Spotify Testing Repo</cs>
   <da>Spotify fra Spotify testing-softwarekilde</da>
   <de>Spotify vom Spotify Testing Repo</de>
   <el>Spotify από το Spotify Test Repo</el>
   <en>Spotify from Spotify Testing Repo</en>
   <es>Spotify de los repositorios Testing de Spotify</es>
   <et>Spotify from Spotify Testing Repo</et>
   <eu>Spotify from Spotify Testing Repo</eu>
   <fa>Spotify from Spotify Testing Repo</fa>
   <fil_PH>Spotify from Spotify Testing Repo</fil_PH>
   <fi>Spotify from Spotify Testing Repo</fi>
   <fr>Spotify du dépôt de test Spotify</fr>
   <he_IL>Spotify from Spotify Testing Repo</he_IL>
   <hi>Spotify from Spotify Testing Repo</hi>
   <hr>Spotify from Spotify Testing Repo</hr>
   <hu>Spotify from Spotify Testing Repo</hu>
   <id>Spotify from Spotify Testing Repo</id>
   <is>Spotify from Spotify Testing Repo</is>
   <it>Spotify dal repo testing di Spotify</it>
   <ja_JP>Spotify from Spotify Testing Repo</ja_JP>
   <ja>Spotify from Spotify Testing Repo</ja>
   <kk>Spotify from Spotify Testing Repo</kk>
   <ko>Spotify from Spotify Testing Repo</ko>
   <lt>Spotify from Spotify Testing Repo</lt>
   <mk>Spotify from Spotify Testing Repo</mk>
   <mr>Spotify from Spotify Testing Repo</mr>
   <nb>Spotify from Spotify Testing Repo</nb>
   <nl>Spotify uit Spotify Testing Pakketbron</nl>
   <pl>Spotify z repozytorium testowego Spotify</pl>
   <pt_BR>Spotify from Spotify Testing Repo</pt_BR>
   <pt>Spotify do Spotify Testing Repo</pt>
   <ro>Spotify from Spotify Testing Repo</ro>
   <ru>Сервис потокового аудио включающий более 30 млн. треков</ru>
   <sk>Spotify from Spotify Testing Repo</sk>
   <sl>Spotify iz Spotify testnega repozitorija</sl>
   <sq>Spotify from Spotify Testing Repo</sq>
   <sr>Spotify from Spotify Testing Repo</sr>
   <sv>Spotify från Spotify Testing Förråd</sv>
   <tr>Spotify from Spotify Testing Repo</tr>
   <uk>Spotify from Spotify Testing Repo</uk>
   <vi>Spotify from Spotify Testing Repo</vi>
   <zh_CN>Spotify from Spotify Testing Repo</zh_CN>
   <zh_TW>Spotify from Spotify Testing Repo</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x2ebf997c15bda244b6ebf5d84773bd5e130d1d45
echo "deb http://repository.spotify.com stable non-free">/etc/apt/sources.list.d/spotify.list
apt-get update
</preinstall>

<install_package_names>
spotify-client
</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
spotify-client
</uninstall_package_names>
</app>
