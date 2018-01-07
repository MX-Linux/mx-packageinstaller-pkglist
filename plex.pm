<?xml version="1.0"?>
<app>

<category>
Media Center
</category>

<name>  
Plex
</name>

<description>  
Plex Mediaserver (includes web client)
</description>

<installable>
all
</installable>

<screenshot>https://www.plex.tv/wp-content/uploads/2016/06/image-block-plex-media-server-macbook.jpg</screenshot>

<preinstall>
curl http://shell.ninthgate.se/packages/shell.ninthgate.se.gpg.key |apt-key add -
echo "deb http://shell.ninthgate.se/packages/debian wheezy main">/etc/apt/sources.list.d/plex.list
x-terminal-emulator -e apt-get update
</preinstall>

<install_package_names>
plexmediaserver
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/plex.list
x-terminal-emulator -e apt-get update
</postinstall>


<uninstall_package_names>
plexmediaserver
</uninstall_package_names>
</app>