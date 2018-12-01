<?xml version="1.0"?>
<app>

<category>
Network
</category>

<name>
Megasync
</name>

<description>
   <am>Client for MEGA file syncing service</am>
   <ca>Client per al servei de sincronització de MEGA</ca>
   <cs>Client for MEGA file syncing service</cs>
   <da>Client for MEGA file syncing service</da>
   <de>Client für MEGA-Dateisynchronisationsdienst</de>
   <el>Πελάτης για υπηρεσία συγχρονισμού αρχείων MEGA</el>
   <en>Client for MEGA file syncing service</en>
   <es>Cliente para el servicio de sincronización de archivos de MEGA</es>
   <fi>Client for MEGA file syncing service</fi>
   <fr>Client pour le service de synchronisation de dossiers MEGA</fr>
   <hi>Client for MEGA file syncing service</hi>
   <hr>Client for MEGA file syncing service</hr>
   <hu>Client for MEGA file syncing service</hu>
   <is>Client for MEGA file syncing service</is>
   <it>Client per il servizio di sincronizzazione file di MEGA</it>
   <ja>Client for MEGA file syncing service</ja>
   <kk>Client for MEGA file syncing service</kk>
   <lt>Client for MEGA file syncing service</lt>
   <nl>Programma voor MEGA bestandssynchronisatieservice</nl>
   <pl>Client for MEGA file syncing service</pl>
   <pt_BR>Client for MEGA file syncing service</pt_BR>
   <pt>Aplicação cliente para o serviço de sincronização de ficheiros da MEGA</pt>
   <ro>Client for MEGA file syncing service</ro>
   <ru>Клиент синхронизации файлов для MEGA</ru>
   <sk>Client for MEGA file syncing service</sk>
   <sq>Client for MEGA file syncing service</sq>
   <sv>Klient för MEGA filsynkroniserings-service</sv>
   <tr>Client for MEGA file syncing service</tr>
   <uk>Client for MEGA file syncing service</uk>
   <zh_TW>Client for MEGA file syncing service</zh_TW>
</description>

<installable>
all
</installable>

<screenshot></screenshot>

<preinstall>
echo "deb https://mega.nz/linux/MEGAsync/Debian_9.0/ ./">/etc/apt/sources.list.d/mxpitemp.list
wget https://mega.nz/linux/MEGAsync/Debian_9.0/Release.key -O /tmp/megarelease.key
apt-key add /tmp/megarelease.key
rm /tmp/megarelease.key
apt-get update
</preinstall>

<install_package_names>
megasync
</install_package_names>


<postinstall>
rm /etc/apt/sources.list.d/mxpitemp.list
</postinstall>


<uninstall_package_names>
megasync
</uninstall_package_names>
</app>
