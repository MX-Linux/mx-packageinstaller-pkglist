<?xml version="1.0"?>
<app>

<category>
Network
</category>

<name>
ExpressVPN
</name>

<description>
   <am>ExpressVPN and sysVinit scripts</am>
   <ar>ExpressVPN and sysVinit scripts</ar>
   <bg>ExpressVPN and sysVinit scripts</bg>
   <bn>ExpressVPN and sysVinit scripts</bn>
   <ca>Scripts per ExpressVPN i sysVinit</ca>
   <cs>ExpressVPN and sysVinit scripts</cs>
   <da>ExpressVPN and sysVinit scripts</da>
   <de>ExpressVPN aud sysVinit Skripte</de>
   <el>σενάρια του ExpressVPN client και sysVinit</el>
   <en>ExpressVPN and sysVinit scripts</en>
   <es>ExpressVPN y sysVinit scripts</es>
   <et>ExpressVPN and sysVinit scripts</et>
   <eu>ExpressVPN and sysVinit scripts</eu>
   <fa>ExpressVPN and sysVinit scripts</fa>
   <fil_PH>ExpressVPN and sysVinit scripts</fil_PH>
   <fi>ExpressVPN and sysVinit scripts</fi>
   <fr>ExpressVPN and sysVinit scripts</fr>
   <he_IL>ExpressVPN and sysVinit scripts</he_IL>
   <hi>ExpressVPN and sysVinit scripts</hi>
   <hr>ExpressVPN and sysVinit scripts</hr>
   <hu>ExpressVPN and sysVinit scripts</hu>
   <id>ExpressVPN and sysVinit scripts</id>
   <is>ExpressVPN and sysVinit scripts</is>
   <it>ExpressVPN and sysVinit scripts</it>
   <ja_JP>ExpressVPN and sysVinit scripts</ja_JP>
   <ja>ExpressVPN and sysVinit scripts</ja>
   <kk>ExpressVPN and sysVinit scripts</kk>
   <ko>ExpressVPN and sysVinit scripts</ko>
   <lt>ExpressVPN and sysVinit scripts</lt>
   <mk>ExpressVPN and sysVinit scripts</mk>
   <mr>ExpressVPN and sysVinit scripts</mr>
   <nb>ExpressVPN and sysVinit scripts</nb>
   <nl>ExpressVPN and sysVinit scripts</nl>
   <pl>Skrypty ExpressVPN i sysVinit</pl>
   <pt_BR>ExpressVPN and sysVinit scripts</pt_BR>
   <pt>Scripts ExpressVPN e sysVinit</pt>
   <ro>ExpressVPN and sysVinit scripts</ro>
   <ru>ExpressVPN и cкрипты sysVinit</ru>
   <sk>ExpressVPN and sysVinit scripts</sk>
   <sl>ExpressVPN in sysVinit skripti</sl>
   <sq>ExpressVPN and sysVinit scripts</sq>
   <sr>ExpressVPN and sysVinit scripts</sr>
   <sv>ExpressVPN och sysVinit skript</sv>
   <tr>ExpressVPN and sysVinit scripts</tr>
   <uk>ExpressVPN and sysVinit scripts</uk>
   <vi>ExpressVPN and sysVinit scripts</vi>
   <zh_CN>ExpressVPN and sysVinit scripts</zh_CN>
   <zh_TW>ExpressVPN and sysVinit scripts</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>

if [ "$(dpkg --print-architecture)" = "amd64" ]; then
ARCH="amd64"
else
ARCH="i386"
fi
# ExpressVPN Release signing key  0xAFF2A1415F6A3A38
KEY=0xAFF2A1415F6A3A38

# prepare temp dir
DIR=$(mktemp -d /tmp/tmpdir-expressvpn-keyring.XXXXXXXXXXXXX)
TKR=$DIR/keyring.kbx

# prepare tidy-up
tidy_up() { rm -r /tmp/tmpdir-expressvpn-keyring.* 2>/dev/null ; }
trap tidy_up EXIT

# get deb and sig
DEB=$(curl -RL -s https://www.expressvpn.com/latest| grep -oE  'https://download.expressvpn.xyz/clients/linux/expressvpn_[0-9.-]*_'${ARCH}'.deb' | head -1)
SIG="${DEB}.asc"

cd $DIR
echo "--------------------------------------"
echo "get ExpressVPN deb-packaga ${DEB##*/}"
echo "--------------------------------------"
echo " "
echo " "
curl -RLJO "$DEB"
echo "--------------------------------------"
echo "get ExpressVPN signature ${SIG##*/}"
echo "--------------------------------------"
echo " "
curl -RLJO "$SIG"
DEB="${DEB##*/}"
SIG="${SIG##*/}"

# get ExpressVPN Release signing key  0xAFF2A1415F6A3A38
PUB=expressvpn_release_public_key_0xAFF2A1415F6A3A38.asc
echo "--------------------------------------"
echo "get ExpressVPN Release signing key: $KEY "
echo "--------------------------------------"
echo " "
curl -sq -o $PUB -RLJ https://www.expressvpn.com/$PUB
if [ -f $PUB ]; then
gpg -q --no-default-keyring --keyring $TKR --import $PUB
else
gpg -q --no-default-keyring --keyring $TKR --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys $KEY
fi
# keyring sanity check
rm $PUB
gpg --no-default-keyring --keyring $TKR --output $PUB --export  $KEY
rm $TKR
gpg -q --no-default-keyring --keyring $TKR --import $PUB
gpg --no-default-keyring --keyring $TKR --keyid-format 0xlong --list-keys $KEY

echo "--------------------------------------"
echo "verify ExpressVPN package signature ..."
gpgv --keyring $TKR $SIG $DEB
RT=$?
echo "--------------------------------------"
if [ $RT != 0 ]; then
echo "Fatal: signature not verified - exit"
exit $RT
fi

#if [ ! /proc/1/exe -ef /usr/lib/systemd/systemd ]; then
#echo "--------------------------------------"
#echo "stop ExpressVPN daemon ..."
#echo "--------------------------------------"
#   /sbin/invoke-rc.d expressvpn stop
#fi
echo "--------------------------------------"
echo "install ExpressVPN deb package"
echo "--------------------------------------"
#dpkg -i  $DIR/$DEB
# fix systemd check
sed -i -E 's=which[[:space:]]+(/bin/)?systemctl=test /proc/1/exe -ef /usr/lib/systemd/systemd=' /var/lib/dpkg/info/expressvpn.{post,pre}* 2>/dev/null
dpkg --unpack  $DIR/$DEB
sed -i -E 's=which[[:space:]]+(/bin/)?systemctl=test /proc/1/exe -ef /usr/lib/systemd/systemd=' /var/lib/dpkg/info/expressvpn.{post,pre}* 2>/dev/null
# fix postrm unnecessary warning
sed -i -E 's=/usr/bin/expressvpn[[:space:]]+status=/usr/bin/expressvpn status 2>/dev/null=' /var/lib/dpkg/info/expressvpn.prerm  2>/dev/null
# fix postinst SUDO_USER to work with pkexec
sed -i -E 's=\$\{?USER\}?=$(logname)=' /var/lib/dpkg/info/expressvpn.postinst  2>/dev/null

# fix lsb_functions
sed -i -e 's/^function pidofproc/function pidofproc_XXX/' \
-e 's/^function killproc/function killproc_XXX/'  /usr/lib/expressvpn/expressvpn.init 2>/dev/null

dpkg --configure  expressvpn
apt-get -yf install

cp -f /usr/lib/expressvpn/expressvpn.init /etc/init.d/expressvpn
chmod +x /etc/init.d/expressvpn
update-rc.d expressvpn defaults
touch /etc/default/expressvpn
if [ ! /proc/1/exe -ef /usr/lib/systemd/systemd ]; then
/etc/init.d/expressvpn restart
fi
echo DONE!
</preinstall>

<install_package_names>

</install_package_names>

<postinstall>

</postinstall>

<uninstall_package_names>
expressvpn
</uninstall_package_names>

<postuninstall>

case "x$(dpkg-query -f '${db:Status-Abbrev}' -W expressvpn 2>/dev/null)" in
xr*)  apt-get -y remove --purge expressvpn
update-rc.d expressvpn remove 2>/dev/null
rm -f /usr/share/bash-completion/completions/expressvpn 2>/dev/null
rm -f /etc/bash_completion.d/expressvpn 2>/dev/null
rm -f /etc/defaults/expressvpn 2>/dev/null
rm -f /etc/init.d/expressvpn 2>/dev/null
rm -rf /var/lib/expressvpn 2>/dev/null
rm -rf /var/log/expressvpn 2>/dev/null
rm -rf /var/run/expressvpn 2>/dev/null
;;
esac

</postuninstall>

</app>
