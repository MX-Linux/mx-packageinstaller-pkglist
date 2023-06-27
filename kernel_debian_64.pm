<?xml version="1.0" encoding="UTF-8"?>
<app>

<category>
Kernels
</category>

<name>
Debian 64 bit
</name>

<description>
   <am>Default Debian kernel Meltdown patched, 64bit</am>
   <ar>Default Debian kernel Meltdown patched, 64bit</ar>
   <bg>Default Debian kernel Meltdown patched, 64bit</bg>
   <bn>Default Debian kernel Meltdown patched, 64bit</bn>
   <ca>Kernel Debian per omissió, esmenat per Meltdown, 64 bit</ca>
   <cs>Default Debian kernel Meltdown patched, 64bit</cs>
   <da>Default Debian kernel Meltdown patched, 64bit</da>
   <de>Default Debian Kernel Meltdown gepatcht, 64bit</de>
   <el>Προκαθορισμένος πυρήνας Debian με Meltdown patched, 64bit</el>
   <en>Default Debian kernel Meltdown patched, 64bit</en>
   <es>Kernel Debian predeterminado Meltdown parcheado, 64bit</es>
   <et>Default Debian kernel Meltdown patched, 64bit</et>
   <eu>Default Debian kernel Meltdown patched, 64bit</eu>
   <fa>Default Debian kernel Meltdown patched, 64bit</fa>
   <fil_PH>Default Debian kernel Meltdown patched, 64bit</fil_PH>
   <fi>Vakiollinen Debian:in ydin, Meltdown-haavoittuvuus paikattu, 64-bittinen</fi>
   <fr>Noyau Debian par défaut correctifs Meltdown, 64bit</fr>
   <he_IL>Default Debian kernel Meltdown patched, 64bit</he_IL>
   <hi>डिफ़ॉल्ट डेबियन कर्नेल मेल्टडाउन पैच, 64 बिट </hi>
   <hr>Default Debian kernel Meltdown patched, 64bit</hr>
   <hu>Default Debian kernel Meltdown patched, 64bit</hu>
   <id>Default Debian kernel Meltdown patched, 64bit</id>
   <is>Default Debian kernel Meltdown patched, 64bit</is>
   <it>Kernel Debian di default, con la patch per Meltdown, 64bit</it>
   <ja_JP>Default Debian kernel Meltdown patched, 64bit</ja_JP>
   <ja>既定の Debian kernel Meltdown patched, 64bit</ja>
   <kk>Default Debian kernel Meltdown patched, 64bit</kk>
   <ko>Default Debian kernel Meltdown patched, 64bit</ko>
   <lt>Default Debian kernel Meltdown patched, 64bit</lt>
   <mk>Default Debian kernel Meltdown patched, 64bit</mk>
   <mr>Default Debian kernel Meltdown patched, 64bit</mr>
   <nb>Standard Debian-kjerne, Meltdown-fikset, 64 bit</nb>
   <nl>Standaard Debian kernel Meltdown patched, 64bit</nl>
   <pl>Default Debian kernel Meltdown patched, 64bit</pl>
   <pt_BR>Núcleo (Kernel) Linux de 64 bits padrão do Debian com as correções Meltdown</pt_BR>
   <pt>Kernel Debian padrão com correcções para as falhas Meltdown e Spectre, 64bit</pt>
   <ro>Default Debian kernel Meltdown patched, 64bit</ro>
   <ru>Стандартное Debian ядро с патчем от Meltdown, 64 бита</ru>
   <sk>Default Debian kernel Meltdown patched, 64bit</sk>
   <sl>Privzeto Debian Meltdown jedro zakrpano, 64 bitno</sl>
   <sq>Kerneli parazgjedhje Debian arnuar për Meltdown, 64bit</sq>
   <sr>Default Debian kernel Meltdown patched, 64bit</sr>
   <sv>Standard Debian kärna Meltdown fixad, 64bit</sv>
   <tr>Öntanmlı Debian Meltdown yamalı çekirdeği, 64 bit</tr>
   <uk>Default Debian kernel Meltdown patched, 64bit</uk>
   <vi>Default Debian kernel Meltdown patched, 64bit</vi>
   <zh_CN>Default Debian kernel Meltdown patched, 64bit</zh_CN>
   <zh_TW>Default Debian kernel Meltdown patched, 64bit</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-amd64
linux-headers-amd64
</install_package_names>


<postinstall>
file=$(apt-cache show linux-image-amd64=4.19* |grep -m1 Depends) 
file=${file#"Depends:"}
rebuild_dkms_packages.sh $file
</postinstall>


<uninstall_package_names>
linux-image-amd64
linux-headers-amd64
</uninstall_package_names>
</app>
