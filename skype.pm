<?xml version="1.0"?>
<app>

<category>
Messaging
</category>

<name>  
Skype
</name>

<description>  
Peer-to-peer (64 bit only) video, voice, messaging
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
x-terminal-emulator -e wget https://go.skype.com/skypeforlinux-64.deb
x-terminal-emulator -e dpkg -i skypeforlinux-64.deb
x-terminal-emulator -e apt-get -f install
rm teamviewer_i386.deb
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
skypeforlinux-64
</uninstall_package_names>
</app>
