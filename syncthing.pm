<?xml version="1.0"?>
<app>

<category>
Network
</category>

<name>
Syncthing.net
</name>

<description>
   <am>syncthing.net file sync utility</am>
   <ar>syncthing.net file sync utility</ar>
   <bg>syncthing.net file sync utility</bg>
   <ca>Utilitat de sincronització de fitxers amb syncthing.net</ca>
   <cs>syncthing.net file sync utility</cs>
   <da>syncthing.net-filsynkroniseringsredskab</da>
   <de>syncthing.net Dateisynchronisationsprogramm</de>
   <el>Βοηθητικό πρόγραμμα συγχρονισμού αρχείων syncthing.net</el>
   <en>syncthing.net file sync utility</en>
   <es>Sincronizar archivos con syncthing.net</es>
   <et>syncthing.net file sync utility</et>
   <eu>syncthing.net file sync utility</eu>
   <fa>syncthing.net file sync utility</fa>
   <fi>syncthing.net file sync utility</fi>
   <fr>Utilitaire de synchronisation de fichier syncthing.net</fr>
   <he_IL>syncthing.net file sync utility</he_IL>
   <hi>syncthing.net file sync utility</hi>
   <hr>syncthing.net file sync utility</hr>
   <hu>syncthing.net file sync utility</hu>
   <id>syncthing.net file sync utility</id>
   <is>syncthing.net file sync utility</is>
   <it>Utility di sincronizzazione dei file</it>
   <ja_JP>syncthing.net file sync utility</ja_JP>
   <ja>syncthing.net file sync utility</ja>
   <kk>syncthing.net file sync utility</kk>
   <ko>syncthing.net file sync utility</ko>
   <lt>syncthing.net failų sinchronizavimo paslaugų programa</lt>
   <mk>syncthing.net file sync utility</mk>
   <nb>syncthing.net file sync utility</nb>
   <nl>syncthing.net bestand synchronisatie gereedschap</nl>
   <pl>narzędzie synchronizacji plików syncthing.net</pl>
   <pt_BR>syncthing.net file sync utility</pt_BR>
   <pt>Utilitário de armazenagem e sincronização de ficheiros</pt>
   <ro>syncthing.net file sync utility</ro>
   <ru>Утилита синхронизации файлов с syncthing.net</ru>
   <sk>syncthing.net file sync utility</sk>
   <sl>syncthing.net file sync utility</sl>
   <sq>syncthing.net file sync utility</sq>
   <sr>syncthing.net file sync utility</sr>
   <sv>syncthing.net filsynkroniserings-redskap</sv>
   <tr>syncthing.net file sync utility</tr>
   <uk>утиліта синхронізації файлів syncthing.net</uk>
   <zh_CN>syncthing.net file sync utility</zh_CN>
   <zh_TW>syncthing.net file sync utility</zh_TW>
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

</postinstall>


<uninstall_package_names>
syncthing
</uninstall_package_names>
</app>
