<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>  
MX 4.14 kernel no-pae
</name>

<description>  
MX 4.14 kernel, 32 bit no-pae
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.14.0-3-686
linux-headers-4.14.0-3-686
</install_package_names>


<postinstall>
x-terminal-emulator -e /usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.14.0-3-686
</postinstall>


<uninstall_package_names>
linux-image-4.14.0-3-686
linux-headers-4.14.0-3-686
</uninstall_package_names>
</app>
