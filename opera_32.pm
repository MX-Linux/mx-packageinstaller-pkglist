<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>  
Opera
</name>

<description>  
Opera browser (32 bit is beta-only)
</description>

<installable>
32
</installable>

<screenshot>http://www-static.operacdn.com/static-heap/e3/e3be37900045a27590062000a1e380e005644b8a/linux.png</screenshot>

<preinstall>
sed -i -r '/opera.com/ s/^#+//' /etc/apt/sources.list.d/various.list
wget -O - http://deb.opera.com/archive.key | apt-key add -
x-terminal-emulator -e apt-get update
</preinstall>

<install_package_names>
opera-beta
</install_package_names>


<postinstall>
if [ -f /etc/apt/sources.list.d/opera-stable.list ]; then sed -i -r '/opera.com/ s/^([^#])/#\1/' /etc/apt/sources.list.d/various.list; x-terminal-emulator -e apt-get update; fi
</postinstall>


<uninstall_package_names>
opera-beta
</uninstall_package_names>
</app>