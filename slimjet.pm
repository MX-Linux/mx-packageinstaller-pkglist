<?xml version="1.0" encoding="UTF-8"?>
<app>

<category>
Browser
</category>

<name>
SlimJet
</name>

<description>
   SlimJet
</description>

<installable>
64
</installable>

<screenshot></screenshot>

<preinstall>
wget https://www.slimjetbrowser.com/release/slimjet_amd64.deb -O /tmp/slimjet_amd64.deb
apt install /tmp/slimjet_amd64.deb
</preinstall>

<install_package_names>
slimjet
</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
slimjet
</uninstall_package_names>
</app>
