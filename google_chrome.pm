<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>  
Google Chrome
</name>

<description>  
Latest Google Chrome browser (stable)
</description>

<installable>
64
</installable>

<screenshot>https://www.google.com/chrome/assets/common/images/marquee/chrome-new.jpg</screenshot>

<preinstall>
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main">/etc/apt/sources.list.d/chrometemp.list
x-terminal-emulator -e apt-get update
</preinstall>

<install_package_names>
google-chrome-stable
</install_package_names>


<postinstall>
rm /etc/apt/sources.list.d/chrometemp.list
</postinstall>


<uninstall_package_names>
google-chrome-stable
</uninstall_package_names>
</app>
