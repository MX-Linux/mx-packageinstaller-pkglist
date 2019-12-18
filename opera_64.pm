<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>
Opera
</name>

<description>
   <am>Oromo Language Meta-Package for LibreOffice</am>
   <ar>Oromo Language Meta-Package for LibreOffice</ar>
   <bg>Oromo Language Meta-Package for LibreOffice</bg>
   <ca>Metapaquet d'idioma Oromo per LibreOffice</ca>
   <cs>Oromo Language Meta-Package for LibreOffice</cs>
   <da>Oromo Language Meta-Package for LibreOffice</da>
   <de>Oromo Meta-Paket für LibreOffice</de>
   <el>Oromo Language Meta-Package for LibreOffice</el>
   <en>Oromo Language Meta-Package for LibreOffice</en>
   <es>Meta-Paquete Oromo Language para LibreOffice</es>
   <et>Oromo Language Meta-Package for LibreOffice</et>
   <eu>Oromo Language Meta-Package for LibreOffice</eu>
   <fa>Oromo Language Meta-Package for LibreOffice</fa>
   <fil_PH>Oromo Language Meta-Package for LibreOffice</fil_PH>
   <fi>Oromo Language Meta-Package for LibreOffice</fi>
   <fr>Oromo Language Meta-Package for LibreOffice</fr>
   <he_IL>Oromo Language Meta-Package for LibreOffice</he_IL>
   <hi>Oromo Language Meta-Package for LibreOffice</hi>
   <hr>Oromo Language Meta-Package for LibreOffice</hr>
   <hu>Oromo Language Meta-Package for LibreOffice</hu>
   <id>Oromo Language Meta-Package for LibreOffice</id>
   <is>Oromo Language Meta-Package for LibreOffice</is>
   <it>Oromo Language Meta-Package for LibreOffice</it>
   <ja_JP>Oromo Language Meta-Package for LibreOffice</ja_JP>
   <ja>Oromo Language Meta-Package for LibreOffice</ja>
   <kk>Oromo Language Meta-Package for LibreOffice</kk>
   <ko>Oromo Language Meta-Package for LibreOffice</ko>
   <lt>Oromo Language Meta-Package for LibreOffice</lt>
   <mk>Oromo Language Meta-Package for LibreOffice</mk>
   <mr>Oromo Language Meta-Package for LibreOffice</mr>
   <nb>Oromo Language Meta-Package for LibreOffice</nb>
   <nl>Oromo Taal Meta-Pakket voor LibreOffice</nl>
   <pl>Oromo Language Meta-Package for LibreOffice</pl>
   <pt_BR>Oromo Language Meta-Package for LibreOffice</pt_BR>
   <pt>Oromo Meta-Pacote de Idioma para LibreOffice</pt>
   <ro>Oromo Language Meta-Package for LibreOffice</ro>
   <ru>Oromo Language Meta-Package for LibreOffice</ru>
   <sk>Oromo Language Meta-Package for LibreOffice</sk>
   <sl>Oromski jezikovni meta-paket za LibreOffice</sl>
   <sq>Oromo Language Meta-Package for LibreOffice</sq>
   <sr>Oromo Language Meta-Package for LibreOffice</sr>
   <sv>Oromo Språk Meta-Paket för LibreOffice</sv>
   <tr>Oromo Language Meta-Package for LibreOffice</tr>
   <uk>Oromo Language Meta-Package for LibreOffice</uk>
   <zh_CN>Oromo Language Meta-Package for LibreOffice</zh_CN>
   <zh_TW>Oromo Language Meta-Package for LibreOffice</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>http://www-static.operacdn.com/static-heap/e3/e3be37900045a27590062000a1e380e005644b8a/linux.png</screenshot>

<preinstall>

# get opera archive keying
TD=$(mktemp -d /tmp/tmpdir-opera-keyring.XXXXXXXXXXXXX)

AK=$TD/opera-archive-keyring.asc

echo "Get Opera Archive Keyring"

curl -sq -o $AK -RLJ https://deb.opera.com/archive.key
if [ ! -f $AK ]; then
echo "Failed to fetch Oprea Archive Keyring"
echo "Exit"
exit 1
fi

# keyring sanity check
TK=$TD/keyring.kbx
gpg -q --no-default-keyring --keyring $TK --import $AK

echo "Adding Opera Archive Keyring"

AK=/etc/apt/trusted.gpg.d/opera-archive-keyring.gpg
rm $AK 2>/dev/null

gpg --no-default-keyring --keyring $TK --output $AK --export  'Opera Software Archive'
gpg --no-default-keyring --keyring $AK --keyid-format 0xlong --list-keys 'Opera Software Archive'

rm -r $TD 2>/dev/null

# disable opera in /etc/apt/sources.list.d/various.list

if [ -f /etc/apt/sources.list.d/various.list ]; then
sed -i -r '/opera.com/{s/^[[:space:]]*//; s/^([^#])/# \1/}' /etc/apt/sources.list.d/various.list
fi


# enable opera's default list  in /etc/apt/sources.list.d/opera-stable.list
echo "deb https://deb.opera.com/opera-stable/ stable non-free" > /etc/apt/sources.list.d/opera-stable.list

apt-get update

# create dummy /etc/apt/sources.list
if [ ! -f /etc/apt/sources.list ]; then
echo "## empty list " > /etc/apt/sources.list
fi

</preinstall>

<install_package_names>
opera-stable
</install_package_names>


<postinstall>

# if [ -f /etc/apt/sources.list.d/opera-stable.list ]; then sed -i -r '/opera.com/ s/^([^#])/#\1/' /etc/apt/sources.list.d/various.list; apt-get update; fi

echo "#-------------------------------------#"
echo "adding HTML5 propriatary media support"
echo "#-------------------------------------#"
#set -x

KIDS="0x3B4FE6ACC0B21F32 0BFB847F3F272F5B 0x40976EAF437D05B5"
KS="--keyserver keyserver.ubuntu.com"
B=http://security.ubuntu.com/ubuntu

case $( . /etc/os-release; echo $VERSION_ID) in
9)  U=$B/dists/xenial-security
;;
10) U=$B/dists/bionic-security
;;
*) U=$B/dists/xenial-security
;;
esac

TD=$(mktemp -d /tmp/tmpdir-ffmpeg.XXXXXXXXXXXXX)
KR="--keyring $TD/keyring.kbx"

if  gpg -q --no-default-keyring  $KR $KS --recv-key $KIDS  2>/dev/null; then
echo "Checking security-archive signing key :  OK"
else
echo "Checking security-archive signing key : failed "
echo "Exit"
exit 1
fi

R=$TD/InRelease
curl -sq -o $R -RLJ $U/InRelease

if  gpgv -q $KR  $R  2>/dev/null; then
echo "Release signature check: OK"
else
echo "Release signature check: failed "
echo "Exit"
exit 2
fi
ARCH="$(dpkg --print-architecture)"
S=$(sed -n -E  's=^ ([a-zA-Z0-9]{64}).*universe/binary-'"$ARCH"'/Packages.gz=\1=p' $R )

P=$TD/Packages.gz
curl -sq -o $P -RLJ $U/universe/binary-$ARCH/Packages.gz
echo "$S Packages.gz" > $P.sha256

cd $TD
if sha256sum --status --check $P.sha256 2>/dev/null ; then
echo "Package-list checksum verification: ok"
else
echo "Package-list checksum verification: failed"
echo "Exit"
exit 3
fi


P=$(zgrep -E '^Filename|^SHA256:' $P  | grep -v -- '-dbg' | grep -E '\bchromium-codecs-ffmpeg-extra_' | sed 's/Filename: //')
S=$(zgrep -E '^Filename|^SHA256:' Packages.gz  | grep -v -- '-dbg' | grep -A1 -E '\bchromium-codecs-ffmpeg-extra_' | grep -m1 ^SHA256 |  sed 's/SHA256: //')


DEB=chromium-codecs-ffmpeg-extra.deb
echo "$S  $DEB" > $DEB.sha256

curl -sq -o $DEB -RLJ $B/$P

if sha256sum --status --check $DEB.sha256 ; then
echo "Deb-package checksum verification: ok"
else
echo "deb-Package checksum verification: failed"
echo "Exit"
exit 3
fi

case "$(dpkg --print-architecture)" in
amd64) 	LIB="usr/lib/x86_64-linux-gnu/opera/lib_extra"
;;
i386)   LIB="usr/lib/i386-linux-gnu/opera/lib_extra"
;;
esac
dpkg-deb --fsys-tarfile $DEB | sudo tar x -C / --wildcards \*libffmpeg\.so --xform  "s,.*/,$LIB/,"

# Show ffmpeg version:
echo "Installed lib: /$LIB/libffmpeg.so"
echo "Installed $( strings /$LIB/libffmpeg.so | grep -m1 'FFmpeg version')"

rm -r $TD 2>/dev/null

echo DONE

</postinstall>


<uninstall_package_names>
opera-stable
</uninstall_package_names>

<postuninstall>

#set -x
# disable opera in /etc/apt/sources.list.d/various.list

if [ -f "/etc/apt/sources.list.d/various.list" ]; then
sed -i -r '/opera.com/{s/^[[:space:]]*//; s/^([^#])/# \1/}' /etc/apt/sources.list.d/various.list
fi

# disable opera's default list  in /etc/apt/sources.list.d/opera-stable.list
if [ -f /etc/apt/sources.list.d/opera-stable.list ]; then
sed -i -r '/opera.com/{s/^[[:space:]]*//; s/^([^#])/# \1/}' /etc/apt/sources.list.d/opera-stable.list
fi

case "$(dpkg --print-architecture)" in
amd64) 	rm -r /usr/lib/x86_64-linux-gnu/opera 2>/dev/null
;;
i386)   rm -r /usr/lib/i386-linux-gnu/opera 2>/dev/null
;;
esac

</postuninstall>

</app>
