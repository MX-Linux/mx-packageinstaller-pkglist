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
   <ca>Darrer navegador Slimjet (torneu a executar-lo per actualitzacions)</ca>
   <cs>Latest Slimjet Browser (run again for updates)</cs>
   <da>Latest Slimjet Browser (run again for updates)</da>
   <de>Neuester Slimjet Browser (zur Aktualisierung erneut ausführen)</de>
   <el>Τελευταίο πρόγραμμα περιήγησης Slimjet (εκτελείται ξανά για ενημερώσεις)</el>
   <en>Latest Slimjet Browser (run again for updates)</en>
   <es>Latest Slimjet Browser (run again for updates)</es>
   <fi>Latest Slimjet Browser (run again for updates)</fi>
   <fr>La dernière version du navigateur Slimjet (relancer pour mise à jour)</fr>
   <hi>Latest Slimjet Browser (run again for updates)</hi>
   <hr>Latest Slimjet Browser (run again for updates)</hr>
   <hu>Latest Slimjet Browser (run again for updates)</hu>
   <is>Latest Slimjet Browser (run again for updates)</is>
   <it>Ultima versione del browser Slimjet (avvia nuovamente per gli aggiornamenti)</it>
   <ja>Latest Slimjet Browser (run again for updates)</ja>
   <kk>Latest Slimjet Browser (run again for updates)</kk>
   <lt>Latest Slimjet Browser (run again for updates)</lt>
   <nl>Meest recente Slimjet Browser (nogmaals uitvoeren voor updates)</nl>
   <pl>Latest Slimjet Browser (run again for updates)</pl>
   <pt_BR>Latest Slimjet Browser (run again for updates)</pt_BR>
   <pt>Navegador web Slimjet, versão mais recente (para obter actualizações, se disponíveis, voltar a executar)</pt>
   <ro>Latest Slimjet Browser (run again for updates)</ro>
   <ru>Браузер Slimjet последней версии (перезапустите для установки обновлений)</ru>
   <sk>Latest Slimjet Browser (run again for updates)</sk>
   <sq>Latest Slimjet Browser (run again for updates)</sq>
   <sv>Senaste Slimjet Webbläsare (kör igen för uppdateringar)</sv>
   <tr>Latest Slimjet Browser (run again for updates)</tr>
   <uk>Latest Slimjet Browser (run again for updates)</uk>
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
