<?xml version="1.0"?>
<app>

<category>
Network
</category>

<name>
ExpressVPN
</name>

<description>
   <am>a Faba icon theme with many colour choices</am>
   <ar>a Faba icon theme with many colour choices</ar>
   <bg>a Faba icon theme with many colour choices</bg>
   <ca>un tema d'icones Faba amb moltes opcions de color</ca>
   <cs>a Faba icon theme with many colour choices</cs>
   <da>et Faba-ikontema med mange farvevalg</da>
   <de>Ein Faba-Icon-Thema mit vielen Farbvarianten</de>
   <el>ένα θέμα εικονίδιο Faba με πολλές επιλογές χρωμάτων</el>
   <en>a Faba icon theme with many colour choices</en>
   <es>Tema de íconos Faba con colores a elección</es>
   <et>a Faba icon theme with many colour choices</et>
   <eu>a Faba icon theme with many colour choices</eu>
   <fa>a Faba icon theme with many colour choices</fa>
   <fil_PH>a Faba icon theme with many colour choices</fil_PH>
   <fi>a Faba icon theme with many colour choices</fi>
   <fr>Jeu d'icônes Faba aux multiples choix de couleurs</fr>
   <he_IL>a Faba icon theme with many colour choices</he_IL>
   <hi>a Faba icon theme with many colour choices</hi>
   <hr>a Faba icon theme with many colour choices</hr>
   <hu>a Faba icon theme with many colour choices</hu>
   <id>a Faba icon theme with many colour choices</id>
   <is>a Faba icon theme with many colour choices</is>
   <it>Tema di icone Faba con molte scelte di colore</it>
   <ja_JP>a Faba icon theme with many colour choices</ja_JP>
   <ja>a Faba icon theme with many colour choices</ja>
   <kk>a Faba icon theme with many colour choices</kk>
   <ko>a Faba icon theme with many colour choices</ko>
   <lt>a Faba icon theme with many colour choices</lt>
   <mk>a Faba icon theme with many colour choices</mk>
   <mr>a Faba icon theme with many colour choices</mr>
   <nb>a Faba icon theme with many colour choices</nb>
   <nl>een Faba icoon thema met veel kleurkeuzes</nl>
   <pl>motyw ikon Faba z dużym wyborem kolorów</pl>
   <pt_BR>Tema de ícones Faba com muitas opções de cores</pt_BR>
   <pt>Tema de ícones Faba com muitas opções de cores</pt>
   <ro>a Faba icon theme with many colour choices</ro>
   <ru>Тема иконок Faba с множеством цветовых вариантов</ru>
   <sk>a Faba icon theme with many colour choices</sk>
   <sl>Faba tema za ikone, z mnogimi izbori barv</sl>
   <sq>a Faba icon theme with many colour choices</sq>
   <sr>a Faba icon theme with many colour choices</sr>
   <sv>ett Faba ikontema med många färgval</sv>
   <tr>a Faba icon theme with many colour choices</tr>
   <uk>тема піктограм Faba з багатим набором кольорів</uk>
   <zh_CN>a Faba icon theme with many colour choices</zh_CN>
   <zh_TW>a Faba icon theme with many colour choices</zh_TW>
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
