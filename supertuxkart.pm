<?xml version="1.0"?>
<app>

<category>
Games
</category>

<name>  
SuperTuxKart
</name>

<description>  
Mario kart style racing, run again for updates
</description>

<installable>
all
</installable>

<screenshot>https://screenshots.debian.net/screenshots/000/009/727/large.png</screenshot>

<preinstall>
echo "deb http://http.debian.net/debian jessie-backports main">/etc/apt/sources.list.d/jessiebackport.list
x-terminal-emulator -e apt-get update
x-terminal-emulator -e apt-get install -t jessie-backports supertuxkart supertuxkart-data
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/jessiebackports.list
x-terminal-emulator -e apt-get update
</postinstall>


<uninstall_package_names>
supertuxkart
supertuxkart-data
</uninstall_package_names>
</app>