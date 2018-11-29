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
   <ca>Spotify from Spotify Testing Repo</ca>
   <cs>Spotify from Spotify Testing Repo</cs>
   <de>Spotify vom Spotify Testing Repo</de>
   <el>Spotify from Spotify Testing Repo</el>
   <en>Spotify from Spotify Testing Repo</en>
   <es>Spotify from Spotify Testing Repo</es>
   <fi>Spotify from Spotify Testing Repo</fi>
   <fr>Spotify du dépôt de test Spotify</fr>
   <hi>Spotify from Spotify Testing Repo</hi>
   <hr>Spotify from Spotify Testing Repo</hr>
   <hu>Spotify from Spotify Testing Repo</hu>
   <it>Spotify dal repo testing di Spotify</it>
   <ja>Spotify from Spotify Testing Repo</ja>
   <kk>Spotify from Spotify Testing Repo</kk>
   <lt>Spotify from Spotify Testing Repo</lt>
   <nl>Spotify uit Spotify Testing Pakketbron</nl>
   <pl>Spotify from Spotify Testing Repo</pl>
   <pt_BR>Spotify from Spotify Testing Repo</pt_BR>
   <pt>Spotify from Spotify Testing Repo</pt>
   <ro>Spotify from Spotify Testing Repo</ro>
   <ru>Spotify from Spotify Testing Repo</ru>
   <sk>Spotify from Spotify Testing Repo</sk>
   <sv>Spotify från Spotify Testing Förråd</sv>
   <tr>Spotify from Spotify Testing Repo</tr>
   <uk>Spotify from Spotify Testing Repo</uk>
   <zh_TW>Spotify from Spotify Testing Repo</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo "deb http://repository.spotify.com stable non-free">/etc/apt/sources.list.d/spotify.list
apt-get update
wget http://ftp.us.debian.org/debian/pool/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u6_amd64.deb -o libssl1.0.0.deb
dpkg -i libssl1.0.0.deb
rm -f libssl1.0.0.deb
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
