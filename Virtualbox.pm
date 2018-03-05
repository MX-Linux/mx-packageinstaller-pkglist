<?xml version="1.0"?>
<app>


<category>
Misc
</category>

<name>  
VirtualBox
</name>

<description>  
Virtualbox 
</description>

<installable>
all
</installable>

<screenshot>https://screenshots.debian.net/screenshots/000/015/010/large.png</screenshot>

<preinstall>

</preinstall>

<install_package_names>
virtualbox
virtualbox-ext-pack
virtualbox-guest-additions-iso 
</install_package_names>


<postinstall>
gpasswd -M $(getent group users | cut -d: -f4) vboxusers
</postinstall>


<uninstall_package_names>
virtualbox
virtualbox-ext-pack
virtualbox-guest-additions-iso 
</uninstall_package_names>

</app>
