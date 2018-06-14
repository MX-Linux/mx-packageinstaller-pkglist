<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>  
Waterfox
</name>

<description>  
alternative mozilla-based browser
</description>

<installable>
64
</installable>

<screenshot>https://www.waterfoxproject.org/media/img/waterfox/products/desktop/waterfox-browser.40990c516643.svg</screenshot>

<preinstall>
echo "deb https://dl.bintray.com/hawkeye116477/waterfox-deb release main">/etc/apt/sources.list.d/waterfox.list
curl https://bintray.com/user/downloadSubjectPublicKey?username=hawkeye116477 | sudo apt-key add -
apt-get update
</preinstall>

<install_package_names>
waterfox
</install_package_names>


<postinstall>
apt-get install waterfox-locale-$(locale |grep LANG|cut -d= -f2 |cut -d_ -f1)
</postinstall>


<uninstall_package_names>
waterfox
</uninstall_package_names>
</app>
