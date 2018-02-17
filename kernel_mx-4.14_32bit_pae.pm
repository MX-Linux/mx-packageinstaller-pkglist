<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>  
MX 4.14 PAE
</name>

<description>  
MX 4.14 kernel, 32 bit PAE
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.14.0-3-686-pae
linux-headers-4.14.0-3-686-pae
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.14.0-3-686-pae
</postinstall>


<uninstall_package_names>
linux-image-4.14.0-3-686-pae
linux-headers-4.14.0-3-686-pae
</uninstall_package_names>
</app>
