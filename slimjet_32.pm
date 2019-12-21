<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>
Slimjet
</name>

<description>
   <am>Latest Slimjet Browser (run again for updates)</am>
   <ar>Latest Slimjet Browser (run again for updates)</ar>
   <bg>Latest Slimjet Browser (run again for updates)</bg>
   <bn>Latest Slimjet Browser (run again for updates)</bn>
   <ca>Darrer navegador Slimjet (torneu a executar-lo per actualitzacions)</ca>
   <cs>Latest Slimjet Browser (run again for updates)</cs>
   <da>Seneste Slimjet-browser (kør igen for opdateringer)</da>
   <de>Neuester Slimjet Browser (zur Aktualisierung erneut ausführen)</de>
   <el>Τελευταίο πρόγραμμα περιήγησης Slimjet (εκτελείται ξανά για ενημερώσεις)</el>
   <en>Latest Slimjet Browser (run again for updates)</en>
   <es>El Último Navegador Slimjet (ejecutar de nuevo para las actualizaciones)</es>
   <et>Latest Slimjet Browser (run again for updates)</et>
   <eu>Latest Slimjet Browser (run again for updates)</eu>
   <fa>Latest Slimjet Browser (run again for updates)</fa>
   <fil_PH>Latest Slimjet Browser (run again for updates)</fil_PH>
   <fi>Latest Slimjet Browser (run again for updates)</fi>
   <fr>La dernière version du navigateur Slimjet (relancer pour mise à jour)</fr>
   <he_IL>Latest Slimjet Browser (run again for updates)</he_IL>
   <hi>Latest Slimjet Browser (run again for updates)</hi>
   <hr>Latest Slimjet Browser (run again for updates)</hr>
   <hu>Latest Slimjet Browser (run again for updates)</hu>
   <id>Latest Slimjet Browser (run again for updates)</id>
   <is>Latest Slimjet Browser (run again for updates)</is>
   <it>Ultima versione del browser Slimjet (avvia nuovamente per gli aggiornamenti)</it>
   <ja_JP>Latest Slimjet Browser (run again for updates)</ja_JP>
   <ja>Latest Slimjet Browser (run again for updates)</ja>
   <kk>Latest Slimjet Browser (run again for updates)</kk>
   <ko>Latest Slimjet Browser (run again for updates)</ko>
   <lt>Latest Slimjet Browser (run again for updates)</lt>
   <mk>Latest Slimjet Browser (run again for updates)</mk>
   <mr>Latest Slimjet Browser (run again for updates)</mr>
   <nb>Latest Slimjet Browser (run again for updates)</nb>
   <nl>Meest recente Slimjet Browser (nogmaals uitvoeren voor updates)</nl>
   <pl>najnowsza przeglądarka Slimjet (uruchom ponownie w celu aktualizacji)</pl>
   <pt_BR>Navegador web Slimjet, versão mais recente (para obter atualizações, se disponíveis, voltar a executar)</pt_BR>
   <pt>Navegador web Slimjet, versão mais recente (para obter actualizações, se disponíveis, voltar a executar)</pt>
   <ro>Latest Slimjet Browser (run again for updates)</ro>
   <ru>Браузер Slimjet последней версии (перезапустите для установки обновлений)</ru>
   <sk>Latest Slimjet Browser (run again for updates)</sk>
   <sl>Zadnja različica Slimjet brskalnika</sl>
   <sq>Latest Slimjet Browser (run again for updates)</sq>
   <sr>Latest Slimjet Browser (run again for updates)</sr>
   <sv>Senaste Slimjet Webbläsare (kör igen för uppdateringar)</sv>
   <tr>Latest Slimjet Browser (run again for updates)</tr>
   <uk>Latest Slimjet Browser (run again for updates)</uk>
   <vi>Latest Slimjet Browser (run again for updates)</vi>
   <zh_CN>Latest Slimjet Browser (run again for updates)</zh_CN>
   <zh_TW>Latest Slimjet Browser (run again for updates)</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>https://www.slimjet.com/en/images/newtab.jpg</screenshot>

<preinstall>
wget http://www.slimjet.com/release/slimjet_i386.deb
dpkg -i slimjet*.deb
apt-get -f install
</preinstall>

<install_package_names>

</install_package_names>


<postinstall>
rm slimjet*.deb
</postinstall>


<uninstall_package_names>
slimjet
</uninstall_package_names>
</app>
