<?xml version="1.0"?>
<app>

<category>
Window Managers
</category>

<name>  
KDE5 Desktop-only
</name>

<description>  
Installs kde-plasma-desktop
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "---- in preprocessing ----"
echo "---- preprocessing done----"
</preinstall>

<install_package_names>
kwin-X11
kde-plasma-desktop
systemsettings
</install_package_names>

<postinstall>

</postinstall>

<uninstall_package_names>
kwin-X11
kde-plasma-desktop
systemsettings
</uninstall_package_names>

</app>
