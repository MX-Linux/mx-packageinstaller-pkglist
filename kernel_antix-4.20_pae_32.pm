<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
antiX 5.2 32 bit pae
</name>

<description>
   <am>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</am>
   <ar>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</ar>
   <bg>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</bg>
   <ca>Kernel antiX 4.9.193 esmenat per Meltdown i Spectre, 64 bit</ca>
   <cs>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</cs>
   <da>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</da>
   <de>antiX 4.9.193 Kernel Meltdown und Spectre gepatcht, 64 bit</de>
   <el>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</el>
   <en>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</en>
   <es>antiX 4.9.193 kernel Meltdown y Spectre parcheados, 64 bit</es>
   <et>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</et>
   <eu>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</eu>
   <fa>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</fa>
   <fil_PH>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</fil_PH>
   <fi>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</fi>
   <fr>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</fr>
   <he_IL>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</he_IL>
   <hi>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</hi>
   <hr>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</hr>
   <hu>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</hu>
   <id>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</id>
   <is>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</is>
   <it>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</it>
   <ja_JP>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</ja_JP>
   <ja>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</ja>
   <kk>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</kk>
   <ko>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</ko>
   <lt>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</lt>
   <mk>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</mk>
   <mr>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</mr>
   <nb>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</nb>
   <nl>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</nl>
   <pl>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</pl>
   <pt_BR>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</pt_BR>
   <pt>Núcleo (kernel) antiX 4.9.193 com correcções para as falhas Meltdown e Spectre, 64 bit</pt>
   <ro>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</ro>
   <ru>antiX 4.9.193 ядро с патчами от Meltdown и Spectre, 64 bit</ru>
   <sk>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</sk>
   <sl>antiX 4.9.193 Meltdownjedro in Spectre zakrpano, 64 bitno</sl>
   <sq>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</sq>
   <sr>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</sr>
   <sv>antiX 4.9.193 kärna Meltdown och Spectre fixad, 64 bit</sv>
   <tr>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</tr>
   <uk>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</uk>
   <zh_CN>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</zh_CN>
   <zh_TW>antiX 4.9.193 kernel Meltdown and Spectre patched, 64 bit</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-5.2.15-antix.1-686-smp-pae
linux-headers-5.2.15-antix.1-686-smp-pae
</install_package_names>


<postinstall>
rebuild_dkms_packages.sh linux-image-5.2.15-antix.1-686-smp-pae
</postinstall>


<uninstall_package_names>
linux-image-5.2.15-antix.1-686-smp-pae
linux-headers-5.2.15-antix.1-686-smp-pae
</uninstall_package_names>
</app>
