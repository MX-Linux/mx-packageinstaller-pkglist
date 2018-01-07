<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>  
Kernel Debian-Backports 64 bit
</name>

<description>  
Debian Backports Kernel (64 bit)
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://ftp.debian.org/debian stretch-backports main">/etc/apt/sources.list.d/backport.list
x-terminal-emulator -e apt-get update
x-terminal-emulator -e apt-get install -t stretch-backports 
</preinstall>

<install_package_names>
linux-image-amd64
linux-headers-amd64
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/backport.list
apt-get -y remove linux-image-amd64 linux-headers-amd64
x-terminal-emulator -e apt-get update
x-terminal-emulator -e /usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
