<?xml version="1.0"?>
<app>

<category>
Misc
</category>

<name>  
Wine
</name>

<description>  
run Windows applications without a copy of Microsoft Windows
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
winehq-staging
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/run_winecfg.sh
</postinstall>


<uninstall_package_names>
winehq-staging
</uninstall_package_names>
</app>
