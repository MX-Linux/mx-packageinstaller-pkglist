<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>  
MX 4.15
</name>

<description>  
MX 4.15 kernel Meltdown and Spectre patched, 64 bit
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.15.0-1-amd64
linux-headers-4.15.0-1-amd64
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.15.0-1-amd64
</postinstall>


<uninstall_package_names>
linux-image-4.15.0-1-amd64
linux-headers-4.15.0-1-amd64
</uninstall_package_names>
</app>
