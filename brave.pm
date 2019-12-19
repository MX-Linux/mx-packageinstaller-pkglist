<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>
Brave
</name>

<description>
   <am>Latest Brave browser</am>
   <ar>Latest Brave browser</ar>
   <bg>Latest Brave browser</bg>
   <ca>Darrer navegador Brave</ca>
   <cs>Latest Brave browser</cs>
   <da>Seneste Brave-browser</da>
   <de>Aktueller Brave-Browser</de>
   <el>Τελευταίο πρόγραμμα περιήγησης Brave</el>
   <en>Latest Brave browser</en>
   <es>El último navegador Brave</es>
   <et>Latest Brave browser</et>
   <eu>Latest Brave browser</eu>
   <fa>Latest Brave browser</fa>
   <fi>Latest Brave browser</fi>
   <fr>La dernière version de Brave</fr>
   <he_IL>Latest Brave browser</he_IL>
   <hi>Latest Brave browser</hi>
   <hr>Latest Brave browser</hr>
   <hu>Latest Brave browser</hu>
   <id>Latest Brave browser</id>
   <is>Latest Brave browser</is>
   <it>Ultimo browser Brave</it>
   <ja_JP>Latest Brave browser</ja_JP>
   <ja>Latest Brave browser</ja>
   <kk>Latest Brave browser</kk>
   <ko>Latest Brave browser</ko>
   <lt>Latest Brave browser</lt>
   <mk>Latest Brave browser</mk>
   <mr>Latest Brave browser</mr>
   <nb>Latest Brave browser</nb>
   <nl>Meest recente Brave browser</nl>
   <pl>najnowsza przeglądarka Brave</pl>
   <pt_BR>Navegador Brave mais recente</pt_BR>
   <pt>Navegador Brave mais recente</pt>
   <ro>Latest Brave browser</ro>
   <ru>Браузер Brave последней версии</ru>
   <sk>Latest Brave browser</sk>
   <sl>Zadnja različica jezikovnega paketa</sl>
   <sq>Latest Brave browser</sq>
   <sr>Latest Brave browser</sr>
   <sv>Senaste Brave webbläsare</sv>
   <tr>Latest Brave browser</tr>
   <uk>Крайня версія браузера Brave</uk>
   <zh_CN>Latest Brave browser</zh_CN>
   <zh_TW>Latest Brave browser</zh_TW>
</description>

<installable>
64
</installable>

<screenshot> </screenshot>

<preinstall>
URL="https://brave-browser-apt-release.s3.brave.com"
ASC="${URL}/brave-core.asc" 
TKR="/etc/apt/trusted.gpg.d/brave-browser-release.gpg" 
SRC="/etc/apt/sources.list.d/brave-browser-release.list"
VER="$(sed -n  's/^VERSION_CODENAME=//p' /etc/os-release)"
case $(cat /etc/debian_version) in
 8*) VER=jessie   ;;
 9*) VER=stretch  ;;
10*) VER=buster   ;;
11*) VER=bullseye ;;
esac
 
DEB="deb [arch=amd64] ${URL}/ $VER main"
 
curl -s $ASC | ( apt-key --keyring $TKR add - 2>/dev/null )
echo "$DEB" | tee $SRC
apt-get update

</preinstall>

<install_package_names>
brave-browser
</install_package_names>

<postinstall>
# fix sandbox

SYSCTL=/etc/sysctl.d/10-securized-yama-scope.conf
echo "kernel.yama.ptrace_scope = 1" > $SYSCTL
if [ -f $SYSCTL ]; then  sysctl --load $SYSCTL; fi

</postinstall>

<uninstall_package_names>
brave-browser
brave-keyring
</uninstall_package_names>

<postuninstall>

apt-get -y remove --purge brave-browser brave-browser
SRC=/etc/apt/sources.list.d/brave-browser-release.list
TKR="/etc/apt/trusted.gpg.d/brave-browser-release.gpg" 
rm -f $SRC 2>/dev/null
rm -f $TKR 2>/dev/null
apt-get update
</postuninstall>

</app>
