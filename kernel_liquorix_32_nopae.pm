<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>  
Liquorix 32 bit no-pae
</name>

<description>  
Liquorix Kernel (no PAE, latest 4.x from MX TEST repo)
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://mxrepo.com/mx/testrepo/ stretch test">/etc/apt/sources.list.d/mxpitemp.list
apt-get update
</preinstall>

<install_package_names>
linux-image-liquorix-686
linux-headers-liquorix-686
broadcom-sta-dkms
ndiswrapper-dkms
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/mxpitemp.list
apt-get -y remove linux-image-liquorix-686 linux-headers-liquorix-686
apt-get update
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
