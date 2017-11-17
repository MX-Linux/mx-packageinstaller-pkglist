<?xml version="1.0"?>
<app>

<category>
Server
</category>

<name>  
Local Web Server
</name>

<description>  
apache2, php7, mariaDB 
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
apache2 
apache2-utils
curl
mariadb-server 
mariadb-client
php7.0 
libapache2-mod-php7.0 
php7.0-mysql 
php-common 
php7.0-cli 
php7.0-common 
php7.0-json 
php7.0-opcache 
php7.0-readline 
</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
apache2 
apache2-utils
curl
mariadb-server 
mariadb-client
php7.0 
libapache2-mod-php7.0 
php7.0-mysql 
php-common 
php7.0-cli 
php7.0-common 
php7.0-json 
php7.0-opcache 
php7.0-readline
</uninstall_package_names>
</app>
