<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>  
Kernel Debian-Backports 32 bit No PAE
</name>

<description>  
Debian Backports Kernel (32 bit No PAE)
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://http.debian.net/debian jessie-backports main">/etc/apt/sources.list.d/jessiebackport.list
x-terminal-emulator -e apt-get update
x-terminal-emulator -e apt-get install -t jessie-backports linux-image-686 linux-headers-686
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/jessiebackport.list
apt-get -y remove linux-image-686 linux-headers-686
x-terminal-emulator -e apt-get update
x-terminal-emulator -e /usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
