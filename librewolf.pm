<?xml version="1.0" encoding="UTF-8"?>
<app>

<category>
Browser
</category>

<name>
librewolf
</name>

<description>
   <am>Latest librewolf browser (stable)</am>
   <ar>Latest librewolf browser (stable)</ar>
   <bg>Latest librewolf browser (stable)</bg>
   <bn>Latest librewolf browser (stable)</bn>
   <ca>Darrer navegador librewolf (estable)</ca>
   <cs>Latest librewolf browser (stable)</cs>
   <da>Seneste librewolf-browser (stabil)</da>
   <de>Aktueller librewolf-Browser (stabil)</de>
   <el>Τελευταίο πρόγραμμα περιήγησης librewolf (σταθερό)</el>
   <en>Latest librewolf browser (stable)</en>
   <es>El último librewolf (estable)</es>
   <et>Latest librewolf browser (stable)</et>
   <eu>Latest librewolf browser (stable)</eu>
   <fa>Latest librewolf browser (stable)</fa>
   <fil_PH>Latest librewolf browser (stable)</fil_PH>
   <fi>Latest librewolf browser (stable)</fi>
   <fr>La dernière version de librewolf (stable)</fr>
   <he_IL>Latest librewolf browser (stable)</he_IL>
   <hi>Latest librewolf browser (stable)</hi>
   <hr>Latest librewolf browser (stable)</hr>
   <hu>Latest librewolf browser (stable)</hu>
   <id>Latest librewolf browser (stable)</id>
   <is>Latest librewolf browser (stable)</is>
   <it>Ultima versione (stabile) del browser librewolf</it>
   <ja_JP>Latest librewolf browser (stable)</ja_JP>
   <ja>Latest librewolf browser (stable)</ja>
   <kk>Latest librewolf browser (stable)</kk>
   <ko>Latest librewolf browser (stable)</ko>
   <lt>Latest librewolf browser (stable)</lt>
   <mk>Latest librewolf browser (stable)</mk>
   <mr>Latest librewolf browser (stable)</mr>
   <nb>Latest librewolf browser (stable)</nb>
   <nl>Meest recente librewolf browser (stable)</nl>
   <pl>najnowsza przeglądarka librewolf (stabilna)</pl>
   <pt_BR>Versão mais recente (estável) do navegador web librewolf</pt_BR>
   <pt>Versão mais recente (estável) do navegador web librewolf</pt>
   <ro>Latest librewolf browser (stable)</ro>
   <ru>Браузер librewolf (последняя стабильная версия)</ru>
   <sk>Posledný librewolf prehliadač (stabilný)</sk>
   <sl>Zadnja različica googlovega librewolf brskalnika</sl>
   <sq>Latest librewolf browser (stable)</sq>
   <sr>Latest librewolf browser (stable)</sr>
   <sv>Senastelibrewolf webbläsare (stable)</sv>
   <tr>Latest librewolf browser (stable)</tr>
   <uk>Крайня стабільна версія браузера librewolf</uk>
   <vi>Latest librewolf browser (stable)</vi>
   <zh_CN>Latest librewolf browser (stable)</zh_CN>
   <zh_TW>Latest librewolf browser (stable)</zh_TW>
</description>

<installable>
 64
</installable>

<screenshot></screenshot>

<preinstall>
wget https://deb.librewolf.net/keyring.gpg -O /etc/apt/trusted.gpg.d/librewolf.gpg
echo "deb [arch=amd64] http://deb.librewolf.net bullseye main">/etc/apt/sources.list.d/librewolf.list
apt-get update
</preinstall>

<install_package_names>
librewolf
</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
librewolf
</uninstall_package_names>

<postuninstall>
rm /etc/apt/sources.list.d/librewolf.list
rm /etc/apt/trusted.gpg.d/librewolf.gpg
apt-get update
</postuninstall>
</app>
