<?xml version="1.0"?>
<app>

<category>
Misc
</category>

<name>  
Google Earth
</name>

<description>  
Google Earth Globe 
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>
x-terminal-emulator -e wget http://dl.google.com/dl/earth/client/current/google-earth-stable_current_i386.deb
x-terminal-emulator -e dpkg -i google-earth-stable*.deb
x-terminal-emulator -e apt-get -f install
x-terminal-emulator -e apt-get install pulseaudio pulseaudio-module-x11 gstreamer0.10-pulseaudio rtkit pavucontrol
rm google-earth-stable*.deb
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
google-earth-stable
</uninstall_package_names>
</app>