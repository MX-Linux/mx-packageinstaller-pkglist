<?xml version="1.0"?>
<app>

<category>
Development
</category>

<name>
deb packaging tools
</name>

<description>
   <am>tools for creation of deb packages</am>
   <ca>eines per a la creació de paquets deb</ca>
   <cs>tools for creation of deb packages</cs>
   <da>tools for creation of deb packages</da>
   <de>Werkzeuge zur Erstellung von Deb-Paketen</de>
   <el>εργαλεία για τη δημιουργία πακέτων deb</el>
   <en>tools for creation of deb packages</en>
   <es>Herramientas para la creación de paquetes deb</es>
   <fi>tools for creation of deb packages</fi>
   <fr>Outils pour la création de paquets .deb</fr>
   <hi>tools for creation of deb packages</hi>
   <hr>tools for creation of deb packages</hr>
   <hu>tools for creation of deb packages</hu>
   <is>tools for creation of deb packages</is>
   <it>Strumenti per la creazione di pacchetti deb</it>
   <ja>tools for creation of deb packages</ja>
   <kk>tools for creation of deb packages</kk>
   <lt>įrankiai, skirti deb paketų kūrimui</lt>
   <nl>gereedschappen voor het maken van deb pakketten</nl>
   <pl>tools for creation of deb packages</pl>
   <pt_BR>Ferramentas para criação de Pacotes deb</pt_BR>
   <pt>Ferramentas para criar pacotes deb</pt>
   <ro>tools for creation of deb packages</ro>
   <ru>Инструменты для создания deb пакетов</ru>
   <sk>tools for creation of deb packages</sk>
   <sq>tools for creation of deb packages</sq>
   <sv>verktyg för att skapa deb paket</sv>
   <tr>tools for creation of deb packages</tr>
   <uk>tools for creation of deb packages</uk>
   <zh_TW>tools for creation of deb packages</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>
#!/bin/bash
cp /etc/apt/sources.list.d/debian.list /etc/apt/pbuilder.list
</preinstall>

<install_package_names>
pbuilder
debian-builder
debhelper
libparse-debcontrol-perl
devscripts
dh-make
fakeroot
build-essential
dpkg-dev
</install_package_names>


<postinstall>
#!/bin/bash
rm -f /etc/apt/pbuilder.list
</postinstall>


<uninstall_package_names>
pbuilder
debian-builder
debhelper
libparse-debcontrol-perl
devscripts
dh-make
fakeroot
dpkg-dev
</uninstall_package_names>
</app>
