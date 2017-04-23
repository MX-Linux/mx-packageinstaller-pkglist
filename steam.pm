<?xml version="1.0"?>
<app>

<category>
Games
</category>

<name>  
Steam
</name>

<description>  
Steam powered games 
</description>

<installable>
all
</installable>

<screenshot>https://screenshots.debian.net/screenshots/000/014/991/large.png</screenshot>

<preinstall>

</preinstall>

<install_package_names>
steam
</install_package_names>


<postinstall>
apt-get install -f
</postinstall>


<uninstall_package_names>
steam
</uninstall_package_names>
</app>