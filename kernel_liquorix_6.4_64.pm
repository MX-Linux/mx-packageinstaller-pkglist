<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Liquorix 6.4.6-1 64 bit
</name>

<description>
   Liquorix 6.4.6-1
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
[ $(apt-get update --print-uris | grep -c -m1 -E "/mx/repo/dists/bookworm/ahs/") = 0 ] || exit 0
MXREPO=$(apt-get update --print-uris | grep -m1 -oE "https?://.*/mx/repo/dists/bookworm/main" | tail -1 | sed "s:^:deb :; s:/repo/dists/:/repo/ :; s:/main: ahs:")
: ${MXREPO:=deb http://mxrepo.com/mx/repo/ bookworm ahs}
echo "$MXREPO" > /etc/apt/sources.list.d/mxpitemp.list
apt-get update 
</preinstall>

<install_package_names>
linux-image-6.4.6-1-liquorix-amd64
linux-headers-6.4.6-1-liquorix-amd64
</install_package_names>


<postinstall>
rebuild_dkms_packages.sh linux-image-6.3.9-1-liquorix-amd64
rm -f /etc/apt/sources.list.d/mxpitemp.list
apt-get update
</postinstall>


<uninstall_package_names>
linux-image-6.3.9-1-liquorix-amd64
linux-headers-6.3.9-1-liquorix-amd64
</uninstall_package_names>
</app>
