<?xml version="1.0"?>
<app>

<category>
Network
</category>

<name>
AirVPN
</name>

<description>
   <am>Albanian localisation of Firefox</am>
   <ar>Albanian localisation of Firefox</ar>
   <bg>Albanian localisation of Firefox</bg>
   <ca>Localització de Firefox en Albanès</ca>
   <cs>Albanian localisation of Firefox</cs>
   <da>Albansk oversættelse af Firefox</da>
   <de>Albanische Lokalisierung von Firefox</de>
   <el>Αλβανικός εντοπισμός του Firefox</el>
   <en>Albanian localisation of Firefox</en>
   <es>Localización Albania de Firefox</es>
   <et>Albanian localisation of Firefox</et>
   <eu>Albanian localisation of Firefox</eu>
   <fa>Albanian localisation of Firefox</fa>
   <fil_PH>Albanian localisation of Firefox</fil_PH>
   <fi>Albanian localisation of Firefox</fi>
   <fr>Localisation albanaise pour Firefox</fr>
   <he_IL>Albanian localisation of Firefox</he_IL>
   <hi>Albanian localisation of Firefox</hi>
   <hr>Albanska lokalizacija Firefoxa</hr>
   <hu>Albanian localisation of Firefox</hu>
   <id>Albanian localisation of Firefox</id>
   <is>Albanian localisation of Firefox</is>
   <it>Localizzazione albanese di Firefox</it>
   <ja_JP>Albanian localisation of Firefox</ja_JP>
   <ja>Albanian localisation of Firefox</ja>
   <kk>Albanian localisation of Firefox</kk>
   <ko>Albanian localisation of Firefox</ko>
   <lt>Albanian localisation of Firefox</lt>
   <mk>Albanian localisation of Firefox</mk>
   <mr>Albanian localisation of Firefox</mr>
   <nb>Albanian localisation of Firefox</nb>
   <nl>Albanese lokalisatie van Firefox</nl>
   <pl>Albańska lokalizacja przeglądarki Firefox</pl>
   <pt_BR>Albanês Localização para Firefox</pt_BR>
   <pt>Albanês Localização para Firefox</pt>
   <ro>Albanian localisation of Firefox</ro>
   <ru>Албанская локализация Firefox</ru>
   <sk>Albanian lokalizácia pre Firefox</sk>
   <sl>Albanian localisation of Firefox</sl>
   <sq>Albanian localisation of Firefox</sq>
   <sr>Albanian localisation of Firefox</sr>
   <sv>Albansk lokalisering av Firefox</sv>
   <tr>Firefox'un Arnavutça yerelleştirmesi</tr>
   <uk>Albanian локалізація Firefox</uk>
   <zh_CN>Albanian localisation of Firefox</zh_CN>
   <zh_TW>Albanian localisation of Firefox</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>
# install airvpn
# prepare temp dir and files
DIR=$(mktemp -d /tmp/tempdir-airvpn-keyring.XXXXXXXXXXXXX)
chmod 700 $DIR
ASC=$DIR/airvpn.asc
GPG=$DIR/airvpn.gpg
KBX=$DIR/airvpn.kbx
AKR=/etc/apt/trusted.gpg.d/airvpn-archive-keyring.gpg
LST=/etc/apt/sources.list.d/airvpn-stable.list
SRC="deb http://eddie.website/repository/apt stable main"
INR=$DIR/InRelease

# prepare tidy-up
tidy_up() { rm -r /tmp/tempdir-airvpn-keyring.* 2>/dev/null; }
trap tidy_up EXIT

echo "Get AirVPN repository keyring"
curl -sq -o $ASC -RLJ https://eddie.website/repository/keys/eddie_maintainer_gpg.key
[ -f "$ASC" ] || { echo "Fatal: Failed to fetch AirVPN repository signing key"; exit 1; }
gpg --no-default-keyring --homedir=$DIR --keyring $KBX --import  $ASC 2>/dev/null

printf "Check Repository InRelease signature\n\n"
curl -sq -RLJ -o $INR http://eddie.website/repository/apt/dists/stable/InRelease
[ -f "$INR" ] || { echo "Fatal: Failed to fetch AirVPN InRelease"; exit 2; }

# E2S to handle ampersand redirects
E2S="$(printf '2\x3e\x261')"
CMD="env LC_ALL=C gpg --verify  $INR $E2S | sed -n 's/^gpg:.*using.*key //p' | grep -ioE '[A-F0-9]{40}'"
INS="$(eval $CMD)"
gpg --no-default-keyring --homedir=$DIR --keyring $KBX --output $GPG --export $INS 2>/dev/null
[ -f "$GPG" ] || { echo "Fatal: Repo signing key error "; exit 3; }
printf "Setup Repository Archive Key: \n"
CMD="env LC_ALL=C gpg --no-default-keyring --homedir=$DIR --keyring $KBX --list-keys $INS $E2S"
printf "$(eval $CMD)\n\n"

cp $GPG $AKR

if ! sed  -re '/^[[:space:]]*#/d; s/#.*//; /^[[:space:]]*deb[[:space:]]+/!d' /etc/apt/sources.list{,.d/*.list} \
| grep -sqE "eddie.website/repository/apt[[:space:]]+stable[[:space:]]+main" ; then
echo "Setup AirVPN repository apt source list"
echo "$SRC" | tee $LST
fi
printf "Refresh package list ...\n\n"
apt-get update

</preinstall>

<install_package_names>
eddie-ui
</install_package_names>

<postinstall>

</postinstall>

<uninstall_package_names>
eddie-ui
</uninstall_package_names>

<postuninstall>
# purge AirVPN-client
if dpkg-query -f '${db:Status-Abbrev}' -W eddie-ui  2>/dev/null 1>/dev/null; then
echo "Postuninstall: Purge AirVPN"
apt-get -y remove --purge eddie-ui
fi
rm -f /etc/apt/sources.list.d/airvpn-stable.list 2>/dev/null
rm -f /etc/apt/trusted.gpg.d/airvpn-archive-keyring.gpg 2>/dev/null
</postuninstall>

</app>
