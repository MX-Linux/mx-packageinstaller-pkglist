<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>  
Debian-Backports 32 bit No PAE
</name>

<description>  
Debian Backports Kernel (32 bit No PAE)
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://http.debian.net/debian stretch-backports main">/etc/apt/sources.list.d/stretchbackport.list
x-terminal-emulator -e apt-get update
x-terminal-emulator -e apt-get install -t stretch-backports 
</preinstall>

<install_package_names>
linux-image-686
linux-headers-686
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/stretchbackport.list
x-terminal-emulator -e /usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-686
apt-get -y remove linux-image-686 linux-headers-686
x-terminal-emulator -e apt-get update
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
