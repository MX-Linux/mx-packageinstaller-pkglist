#!/bin/bash

#finish installing plex for sysV environment
#part of mx-packageinstaller

rm -f /etc/apt/sources.list.d/plex.list
cp /usr/share/mx-packageinstaller-pkglist/plex_stuff/default/plexmediaserver /etc/default/plexmediaserver
rm /etc/init.d/plexmediaserver
chown -R plex:plex /var/lib/plexmediaserver/
cp /usr/share/mx-packageinstaller-pkglist/plex_stuff/init/plexmediaserver /etc/init.d/plexmediaserver
update-rc.d plexmediaserver defaults
exit 0
