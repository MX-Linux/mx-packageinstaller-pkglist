<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>  
Debian-Backports 32 bit PAE
</name>

<description>  
Debian Backports Kernel (32 bit PAE)
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://http.debian.net/debian jessie-backports main">/etc/apt/sources.list.d/jessiebackport.list
apt-get update
apt-get install -t jessie-backports linux-image-686-pae linux-headers-686-pae
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/jessiebackport.list
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-amd64 linux-image-686-pae
apt-get -y remove linux-image-686-pae linux-headers-686-pae
apt-get update
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
