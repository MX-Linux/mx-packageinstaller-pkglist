<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>  
Brave
</name>

<description>  
Brave web browser
</description>

<installable>
64
</installable>

<screenshot>https://brave.com/images/brave_browser_float_75-1.png</screenshot>

<preinstall>
curl https://s3-us-west-2.amazonaws.com/brave-apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://s3-us-west-2.amazonaws.com/brave-apt stretch main" | sudo tee -a /etc/apt/sources.list.d/brave-stretch.list
apt-get update
</preinstall>

<install_package_names>
brave
</install_package_names>


<postinstall>
</postinstall>


<uninstall_package_names>
brave
</uninstall_package_names>
</app>
