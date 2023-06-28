<?xml version="1.0" encoding="UTF-8"?>
<app>

<category>
Kernels
</category>

<name>
Debian 32 bit w/pae
</name>

<description>
   <am>Default Debian 32bit linux kernel w/PAE</am>
   <ar>Default Debian 32bit linux kernel w/PAE</ar>
   <bg>Default Debian 32bit linux kernel w/PAE</bg>
   <bn>Default Debian 32bit linux kernel w/PAE</bn>
   <ca>Kernel Linux Debian 32bit per omissió amb PAE</ca>
   <cs>Default Debian 32bit linux kernel w/PAE</cs>
   <da>Default Debian 32bit linux kernel w/PAE</da>
   <de>Default Debian 32bit Linux Kernel w/PAE</de>
   <el>Προκαθορισμένος Debian 32bit linux kernel PAE</el>
   <en>Default Debian 32bit linux kernel w/PAE</en>
   <es>Kernel Debian predeterminado 32bit linux  w/PAE</es>
   <et>Default Debian 32bit linux kernel w/PAE</et>
   <eu>Default Debian 32bit linux kernel w/PAE</eu>
   <fa>Default Debian 32bit linux kernel w/PAE</fa>
   <fil_PH>Default Debian 32bit linux kernel w/PAE</fil_PH>
   <fi>Vakiollinen Debian:in 32-bittinen Linux-ydin PAE:n kanssa</fi>
   <fr>Noyau Debian par défaut 32bit PAE</fr>
   <he_IL>Default Debian 32bit linux kernel w/PAE</he_IL>
   <hi>डिफ़ॉल्ट डेबियन 32 बिट लिनक्स कर्नेल, पीएई सहित</hi>
   <hr>Default Debian 32bit linux kernel w/PAE</hr>
   <hu>Default Debian 32bit linux kernel w/PAE</hu>
   <id>Default Debian 32bit linux kernel w/PAE</id>
   <is>Default Debian 32bit linux kernel w/PAE</is>
   <it>Kernel Debian di default 32bit w/PAE</it>
   <ja>既定の Debian 32bit linux kernel w/PAE</ja>
   <kk>Default Debian 32bit linux kernel w/PAE</kk>
   <ko>Default Debian 32bit linux kernel w/PAE</ko>
   <lt>Default Debian 32bit linux kernel w/PAE</lt>
   <mk>Default Debian 32bit linux kernel w/PAE</mk>
   <mr>Default Debian 32bit linux kernel w/PAE</mr>
   <nb>Standard Debian 32 bit Linux-kjerne med PAE</nb>
   <nl>Standaard Debian 32bit linux kernel met PAE</nl>
   <pl>Default Debian 32bit linux kernel w/PAE</pl>
   <pt_BR>Núcleo (Kernel) Linux de 32 bits padrão do Debian com PAE</pt_BR>
   <pt>Kernel linux Debian padrão, 32bit c/PAE</pt>
   <ro>Default Debian 32bit linux kernel w/PAE</ro>
   <ru>Стандартное ядро Debian, 32 бита PAE</ru>
   <sk>Default Debian 32bit linux kernel w/PAE</sk>
   <sl>Privzeto Debian 32 bitno linux jedro s PAE</sl>
   <sq>Kerneli parazgjedhje linux Debian 32bit w/PAE</sq>
   <sr>Default Debian 32bit linux kernel w/PAE</sr>
   <sv>Standard Debian 32bit linux kärna med PAE</sv>
   <tr>Öntanımlı Debian 32 bit Linux çekirdeği w/PAE</tr>
   <uk>Default Debian 32bit linux kernel w/PAE</uk>
   <vi>Default Debian 32bit linux kernel w/PAE</vi>
   <zh_CN>Default Debian 32bit linux kernel w/PAE</zh_CN>
   <zh_TW>Default Debian 32bit linux kernel w/PAE</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-686-pae
linux-headers-686-pae
</install_package_names>


<postinstall>
file=$(apt-cache show linux-image-686-pae=4.19 |grep -m1 Depends) 
file=${file#"Depends:"}
rebuild_dkms_packages.sh $file
</postinstall>


<uninstall_package_names>
linux-image-686-pae
linux-headers-686-pae
</uninstall_package_names>
</app>
