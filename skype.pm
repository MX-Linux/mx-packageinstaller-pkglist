<?xml version="1.0"?>
<app>

<category>
Messaging
</category>

<name>  
Skype
</name>

<description>  
VoIP, Instant Messaging and Video Conferencing
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>
x-terminal-emulator -e wget -O skype-install.deb http://www.skype.com/go/getskype-linux-deb
x-terminal-emulator -e dpkg -i skype-install.deb
x-terminal-emulator -e apt-get -f install
x-terminal-emulator -e apt-get install pulseaudio pulseaudio-module-x11 gstreamer0.10-pulseaudio rtkit pavucontrol
rm -f skype-install.deb
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
skype
</uninstall_package_names>
</app>