<?xml version="1.0" encoding="UTF-8"?>
<app>

<category>
Network
</category>

<name>
Mullvad VPN
</name>

<description>
   <am>Mullvad VPN and sysVinit scripts</am>
   <ar>Mullvad VPN and sysVinit scripts</ar>
   <bg>Mullvad VPN and sysVinit scripts</bg>
   <bn>Mullvad VPN and sysVinit scripts</bn>
   <ca>Scripts Mullvad VPN i sysVinit</ca>
   <cs>Mullvad VPN and sysVinit scripts</cs>
   <da>Mullvad VPN and sysVinit scripts</da>
   <de>Mullvad VPN und sysVinit Scripte</de>
   <el>σενάρια του Mullvad VPN και sysVinit</el>
   <en>Mullvad VPN and sysVinit scripts</en>
   <es>Mullvad VPN y scripts sysVinit</es>
   <et>Mullvad VPN and sysVinit scripts</et>
   <eu>Mullvad VPN and sysVinit scripts</eu>
   <fa>Mullvad VPN and sysVinit scripts</fa>
   <fil_PH>Mullvad VPN and sysVinit scripts</fil_PH>
   <fi>Mullvad VPN and sysVinit scripts</fi>
   <fr>Scripts pour Mullvad VPN et sysVinit</fr>
   <he_IL>Mullvad VPN and sysVinit scripts</he_IL>
   <hi>Mullvad VPN and sysVinit scripts</hi>
   <hr>Mullvad VPN and sysVinit scripts</hr>
   <hu>Mullvad VPN and sysVinit scripts</hu>
   <id>Mullvad VPN and sysVinit scripts</id>
   <is>Mullvad VPN and sysVinit scripts</is>
   <it>Mullvad VPN e script sysVinit</it>
   <ja_JP>Mullvad VPN and sysVinit scripts</ja_JP>
   <ja>Mullvad VPN and sysVinit scripts</ja>
   <kk>Mullvad VPN and sysVinit scripts</kk>
   <ko>Mullvad VPN and sysVinit scripts</ko>
   <lt>Mullvad VPN and sysVinit scripts</lt>
   <mk>Mullvad VPN and sysVinit scripts</mk>
   <mr>Mullvad VPN and sysVinit scripts</mr>
   <nb>Mullvad VPN and sysVinit scripts</nb>
   <nl>Mullvad VPN en sysVinit scripts</nl>
   <pl>Mullvad VPN and sysVinit scripts</pl>
   <pt_BR>Scripts para sysVinit e Mullvad VPN</pt_BR>
   <pt>Scripts para sysVinit e VPN Mullvad</pt>
   <ro>Mullvad VPN and sysVinit scripts</ro>
   <ru>VPN и SysVinit - скрипты от Mullvad</ru>
   <sk>Mullvad VPN and sysVinit scripts</sk>
   <sl>Mullvad VPN in syVinit skripte</sl>
   <sq>Mullvad VPN and sysVinit scripts</sq>
   <sr>Mullvad VPN and sysVinit scripts</sr>
   <sv>Mullvad VPN och sysVinit skript</sv>
   <tr>Mullvad VPN and sysVinit scripts</tr>
   <uk>Mullvad VPN and sysVinit scripts</uk>
   <vi>Mullvad VPN and sysVinit scripts</vi>
   <zh_CN>Mullvad VPN and sysVinit scripts</zh_CN>
   <zh_TW>Mullvad VPN and sysVinit scripts</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>
#!/bin/bash
# mullvadvpn 64bit only
#
[ "$(dpkg --print-architecture)" = "amd64" ] || exit 1

# prepare temp dir
DIR=$(mktemp -d /tmp/tmpdir-mullvadvpn-installer.XXXXXXXXXXXXX)
chmod 700 $DIR

# prepare tidy-up
tidy_up() { rm -r $DIR  2>/dev/null; }
trap tidy_up EXIT

echo "Downloading Mullvad VPN for Linux 64bit:"
pushd $DIR >/dev/null

# get filepath of latest release on github
FIL=$(curl -sRLJ https://github.com/mullvad/mullvadvpn-app/releases | sed -nr '\|.*href="([[:alnum:]/_.-]+MullvadVPN[0-9._-]+_amd64.deb)".*|{s||\1|p;q}')
[ -n "$FIL" ] || {
    echo "ERROR: Download of Mullvad VPN failed [no file name] "; exit 2; }

URL=https://github.com${FIL}
DEB=$(basename "$FIL" )
SIG=$DEB.asc
echo "---------------------------------------------------------"
echo "get Mullvad VPN deb-packaga ${DEB}"
echo "---------------------------------------------------------"
echo " "

curl --progress-bar -RLJO $URL
[ -s "$DEB" ] || {
    echo "ERROR: Download of Mullvad VPN failed [no package name] "; exit 3; }

echo "---------------------------------------------------------"
echo "get Mullvad VPN deb-package signature ${SIG}"
echo "---------------------------------------------------------"
echo " "

curl --progress-bar  -RLJO $URL.asc
[ -s "$SIG" ] || { echo "ERROR: Download of signature '${SIG}' failed "; exit 4; }

KEY=https://mullvad.net/media/mullvad-code-signing.asc
echo "--------------------------------------"
echo "get Mullvad VPN code signing key: ${KEY##*/}"
echo "--------------------------------------"
curl --progress-bar -RLJO $KEY
KEY=${KEY##*/}
[ -s $KEY ] || {
    echo "ERROR: Download of Mullvad VPN signing key : mullvad-code-signing.asc failed "; exit 5; }
echo "---------------------------------------------------------"
echo "received Mullvad VPN code signing key: ${KEY##*/}"
echo "---------------------------------------------------------"
gpg --dearmor -o ${KEY%.asc}.gpg $KEY
KEY=${KEY%.asc}.gpg
gpg --show-keys --keyid-format 0xlong --with-fingerprint $KEY
echo "---------------------------------------------------------"
echo "verify Mullvad VPN deb-package signature"
echo "---------------------------------------------------------"
gpgv --ignore-time-conflict --keyring ./$KEY $SIG $DEB  || { #  2&gt;&amp;1
    "ERROR: Signature verifcation failed"; exit 6; }

# remove obsolete packages if installed
if dpkg -l | grep -sq '^i.*mullvadvpn-sysvinit-compat'; then
   if [ -x /etc/init.d/mullvad-daemon ]; then
        if /etc/init.d/mullvad-daemon status >/dev/null 2>/dev/null; then
           /etc/init.d/mullvad-daemon stop
        fi
   fi
   rm /var/lib/dpkg/info/mullvadvpn-sysvinit-compat.p*rm 2>/dev/null
   if [ -L /opt/MullvadVPN ]; then
        rm /opt/MullvadVPN
   fi
   apt-get -y remove --purge mullvadvpn-sysvinit-compat
fi
if dpkg -l | grep -sq '^i.*mullvadvpn-downloader-installer'; then
   rm /var/lib/dpkg/info/mullvadvpn-downloader-installer.p*rm 2>/dev/null
   apt-get -y remove --purge mullvadvpn-downloader-installer
fi

echo "---------------------------------------------------------"
echo "Installing Mullvad VPN"
echo "---------------------------------------------------------"
pkill -x mullvad-gui
dpkg --unpack $DEB

# fix spaces in path: create a symlink to avoid init.d error
if [ -d '/opt/Mullvad VPN' ]; then
  if [ -h /opt/MullvadVPN ]; then
       rm /opt/MullvadVPN
  fi
  ln -s '/opt/Mullvad VPN' /opt/MullvadVPN
fi

# fix systemctl in sysV-init deb-config files
sed -i \
-e 's/^[[:space:]]+$//' \
-e '1,/^$/{/^$/apkill -x mullvad-gui || true\

}' /var/lib/dpkg/info/mullvad-vpn.prerm

sed -i \
-e '1s|.*|#!/bin/bash|' \
-e '2a\
\
function systemctl {\
local action=$1 service="$2"\
local initservice="${service##*/}"\
initservice="${initservice%.service}"\
\
case $action in\
  disable)\
     update-rc.d "$initservice" remove\
     ;;\
  enable)\
     update-rc.d "$initservice" remove\
     update-rc.d "$initservice" defaults\
     ;;\
esac\
if [ -d /run/systemd/system ]; then\
   /usr/bin/systemctl $action "$service"\
   return $?\
else\
   case $action in\
      start|stop|status) service "$initservice" $action\
      ;;\
   esac\
   return $?\
fi\
}\
' /var/lib/dpkg/info/mullvad-vpn.p*

echo "
if [ -h /opt/MullvadVPN ];then rm /opt/MullvadVPN; fi
if [ -f /etc/init.d/mullvad-daemon ];then rm /etc/init.d/mullvad-daemon; fi
" >> /var/lib/dpkg/info/mullvad-vpn.postrm

# convert mullvad-daemon.service to sysV-init
if [ -f /etc/init.d/mullvad-daemon ];then rm /etc/init.d/mullvad-daemon; fi
touch /etc/init.d/mullvad-daemon
sysd2v.sh $(ls -r1 /opt/MullvadVPN/resources/mullvad-daemon.service* | head -1 ) > /etc/init.d/mullvad-daemon
sed -i '
    s|^DAEMON=/opt/Mullvad.*VPN/|DAEMON=/opt/MullvadVPN/|
    s/mullvad-daemon.service/mullvad-daemon/g
    s/-sysd2v.pid/.pid/' /etc/init.d/mullvad-daemon
chmod +x /etc/init.d/mullvad-daemon

if [ -h /opt/MullvadVPN ];then
   rm /opt/MullvadVPN;
   ln -s '/opt/Mullvad VPN' /opt/MullvadVPN
fi

# configure deb package
dpkg --configure mullvad-vpn
echo " "
apt-get install -yf

echo "---------------------------------------------------------"
echo "...$(gettext -d apt -s ' Done')!"
echo "---------------------------------------------------------"

</preinstall>

<install_package_names>
</install_package_names>

<postinstall>

</postinstall>

<uninstall_package_names>
mullvad-vpn
</uninstall_package_names>

<postuninstall>
apt-get -y purge mullvad-vpn
</postuninstall>

</app>
