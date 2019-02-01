<?xml version="1.0"?>
<app>

<category>
Utility
</category>

<name>
Advert-Block-antiX
</name>

<description>
   <am>Block adservers with a modified Hosts file</am>
   <ar>Block adservers with a modified Hosts file</ar>
   <bg>Block adservers with a modified Hosts file</bg>
   <ca>Bloqueig de publicitat per fitxer d'amfitrions modificat</ca>
   <cs>Block adservers with a modified Hosts file</cs>
   <da>Block reklameservere med en ændrede Hosts-fil</da>
   <de>Blockiert Werbung über die Datei /etc/hosts</de>
   <el>Αποκλείστε διαφημιστές με ένα τροποποιημένο αρχείο Hosts</el>
   <en>Block adservers with a modified Hosts file</en>
   <es>Bloquear adservers con fichero Hosts modificado</es>
   <et>Block adservers with a modified Hosts file</et>
   <eu>Block adservers with a modified Hosts file</eu>
   <fa>Block adservers with a modified Hosts file</fa>
   <fi>Block adservers with a modified Hosts file</fi>
   <fr>Bloquage des serveurs de publicité au moyen d'un fichier Hosts modifié</fr>
   <he_IL>Block adservers with a modified Hosts file</he_IL>
   <hi>Block adservers with a modified Hosts file</hi>
   <hr>Block adservers with a modified Hosts file</hr>
   <hu>Block adservers with a modified Hosts file</hu>
   <id>Block adservers with a modified Hosts file</id>
   <is>Block adservers with a modified Hosts file</is>
   <it>Blocca la pubblicità con un file Hosts modificato</it>
   <ja_JP>Block adservers with a modified Hosts file</ja_JP>
   <ja>Block adservers with a modified Hosts file</ja>
   <kk>Block adservers with a modified Hosts file</kk>
   <ko>Block adservers with a modified Hosts file</ko>
   <lt>Block adservers with a modified Hosts file</lt>
   <mk>Block adservers with a modified Hosts file</mk>
   <nb>Block adservers with a modified Hosts file</nb>
   <nl>Blokkeer adservers met een aangepast Hosts bestand</nl>
   <pl>Block adservers with a modified Hosts file</pl>
   <pt_BR>Block adservers with a modified Hosts file</pt_BR>
   <pt>Bloquear servidores de publicidade através de um ficheiro de hospedeiros (Hosts) modificado</pt>
   <ro>Block adservers with a modified Hosts file</ro>
   <ru>Блокирует сервера рекламы при помощи модицированного файла Hosts</ru>
   <sk>Block adservers with a modified Hosts file</sk>
   <sl>Block adservers with a modified Hosts file</sl>
   <sq>Block adservers with a modified Hosts file</sq>
   <sr>Block adservers with a modified Hosts file</sr>
   <sv>Blockera annonsservrar med en modifierad Hosts fil</sv>
   <tr>Block adservers with a modified Hosts file</tr>
   <uk>Блокувальних реклами з модифікованим файлом hosts</uk>
   <zh_CN>Block adservers with a modified Hosts file</zh_CN>
   <zh_TW>Block adservers with a modified Hosts file</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
advert-block-antix
</install_package_names>


<postinstall>
sed -i -r s/NoDisplay=True/NoDisplay=False/ /usr/share/applications/antix/advert-block.desktop
cp /usr/share/applications/antix/advert-block.desktop /usr/share/applications/advert-block.desktop
sed -i -r s/NoDisplay=False/NoDisplay=True/ /usr/share/applications/antix/advert-block.desktop
</postinstall>


<uninstall_package_names>
advert-block-antix
</uninstall_package_names>
</app>
