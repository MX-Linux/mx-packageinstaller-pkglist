<?xml version="1.0"?>
<app>

<category>
Messaging
</category>

<name>
Skype (64bit only)
</name>

<description>
   <am>Peer-to-peer video, voice, messaging</am>
   <ca>Peer-to-peer video, voice, messaging</ca>
   <cs>Peer-to-peer video, voice, messaging</cs>
   <de>Peer-to-Peer-Video, Sprache, Messaging</de>
   <el>Peer-to-peer video, voice, messaging</el>
   <en>Peer-to-peer video, voice, messaging</en>
   <es>Peer-to-peer video, voice, messaging</es>
   <fi>Peer-to-peer video, voice, messaging</fi>
   <fr>Messagerie vocale, vidéo, peer-to-peer</fr>
   <hi>Peer-to-peer video, voice, messaging</hi>
   <hr>Peer-to-peer video, voice, messaging</hr>
   <hu>Peer-to-peer video, voice, messaging</hu>
   <it>Peer-to-peer video, voce e messaggi</it>
   <ja>Peer-to-peer video, voice, messaging</ja>
   <kk>Peer-to-peer video, voice, messaging</kk>
   <lt>Peer-to-peer video, voice, messaging</lt>
   <nl>Peer-to-peer video, voice, berichten</nl>
   <pl>Peer-to-peer video, voice, messaging</pl>
   <pt_BR>Peer-to-peer video, voice, messaging</pt_BR>
   <pt>Peer-to-peer video, voice, messaging</pt>
   <ro>Peer-to-peer video, voice, messaging</ro>
   <ru>Peer-to-peer video, voice, messaging</ru>
   <sk>Peer-to-peer video, voice, messaging</sk>
   <sv>Peer-to-peer video, röst, meddelandetjänst</sv>
   <tr>Peer-to-peer video, voice, messaging</tr>
   <uk>Peer-to-peer video, voice, messaging</uk>
   <zh_TW>Peer-to-peer video, voice, messaging</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
wget https://repo.skype.com/latest/skypeforlinux-64.deb
dpkg -i skypeforlinux-64.deb
apt-get -f install
rm skypeforlinux-64.deb
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
skypeforlinux
</uninstall_package_names>
</app>
