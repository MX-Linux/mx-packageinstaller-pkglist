<?xml version="1.0"?>
<app>

<category>
Network
</category>

<name>
Syncthing
</name>

<description>
   <am>Syncthing file sync utility</am>
   <ar>Syncthing file sync utility</ar>
   <bg>Syncthing file sync utility</bg>
   <ca>Utilitat de sincronització de fitxers amb Syncthing</ca>
   <cs>Syncthing file sync utility</cs>
   <da>Syncthing-filsynkroniseringsredskab</da>
   <de>Syncthing Dateisynchronisationsprogramm</de>
   <el>Βοηθητικό πρόγραμμα συγχρονισμού αρχείων Syncthing</el>
   <en>Syncthing file sync utility</en>
   <es>Sincronizar archivos con Syncthing</es>
   <et>Syncthing file sync utility</et>
   <eu>Syncthing file sync utility</eu>
   <fa>Syncthing file sync utility</fa>
   <fi>Syncthing file sync utility</fi>
   <fr>Utilitaire de synchronisation de fichier Syncthing</fr>
   <he_IL>Syncthing file sync utility</he_IL>
   <hi>Syncthing file sync utility</hi>
   <hr>Syncthing file sync utility</hr>
   <hu>Syncthing file sync utility</hu>
   <id>Syncthing file sync utility</id>
   <is>Syncthing file sync utility</is>
   <it>Utility di sincronizzazione dei file</it>
   <ja_JP>Syncthing file sync utility</ja_JP>
   <ja>Syncthing file sync utility</ja>
   <kk>Syncthing file sync utility</kk>
   <ko>Syncthing file sync utility</ko>
   <lt>Syncthing failų sinchronizavimo paslaugų programa</lt>
   <mk>Syncthing file sync utility</mk>
   <nb>Syncthing file sync utility</nb>
   <nl>Syncthing bestand synchronisatie gereedschap</nl>
   <pl>narzędzie synchronizacji plików Syncthing</pl>
   <pt_BR>Syncthing file sync utility</pt_BR>
   <pt>Utilitário de armazenagem e sincronização de ficheiros</pt>
   <ro>Syncthing file sync utility</ro>
   <ru>Утилита синхронизации файлов с Syncthing</ru>
   <sk>Syncthing file sync utility</sk>
   <sl>Syncthing file sync utility</sl>
   <sq>Syncthing file sync utility</sq>
   <sr>Syncthing file sync utility</sr>
   <sv>Syncthing filsynkroniserings-redskap</sv>
   <tr>Syncthing file sync utility</tr>
   <uk>утиліта синхронізації файлів Syncthing</uk>
   <zh_CN>Syncthing file sync utility</zh_CN>
   <zh_TW>Syncthing file sync utility</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>
curl -s https://syncthing.net/release-key.txt | apt-key add -
echo "deb https://apt.syncthing.net/ syncthing stable">/etc/apt/sources.list.d/syncthing.list
apt-get update
</preinstall>

<install_package_names>
syncthing
</install_package_names>


<postinstall>
cp /usr/share/applications/syncthing-start.desktop /etc/xdg/autostart
</postinstall>


<uninstall_package_names>
syncthing
</uninstall_package_names>
</app>
