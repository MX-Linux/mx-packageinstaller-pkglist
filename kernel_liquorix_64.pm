<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>  
Liquorix Kernel 64 bit
</name>

<description>  
Liquorix Kernel (64 bit, latest 4.x from MX TEST repo)
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://main.mepis-deb.org/mx/testrepo/ mx15 test">/etc/apt/sources.list.d/mxtestrepotemp.list
x-terminal-emulator -e apt-get update
</preinstall>

<install_package_names>
linux-image-liquorix-amd64
linux-headers-liquorix-amd64
broadcom-sta-dkms
ndiswrapper-dkms
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/mxtestrepotemp.list
apt-get remove linux-image-liquorix-amd64 linux-headers-liquorix-amd64
x-terminal-emulator -e apt-get update
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>