<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>
Vivaldi
</name>

<description>
   <am>alternative mozilla-based browser</am>
   <ar>alternative mozilla-based browser</ar>
   <bg>alternative mozilla-based browser</bg>
   <ca>Navegador alternatiu basat en Mozilla</ca>
   <cs>alternative mozilla-based browser</cs>
   <da>Alternativ mozilla-baseret browser</da>
   <de>Alternativer Mozilla-basierter Browser</de>
   <el>εναλλακτικό πρόγραμμα περιήγησης που βασίζεται σε mozilla</el>
   <en>alternative mozilla-based browser</en>
   <es>Navegador alternativo basado en Mozilla</es>
   <et>alternative mozilla-based browser</et>
   <eu>alternative mozilla-based browser</eu>
   <fa>alternative mozilla-based browser</fa>
   <fil_PH>alternative mozilla-based browser</fil_PH>
   <fi>alternative mozilla-based browser</fi>
   <fr>Navigateur alternatif basé sur Mozilla</fr>
   <he_IL>alternative mozilla-based browser</he_IL>
   <hi>alternative mozilla-based browser</hi>
   <hr>alternative mozilla-based browser</hr>
   <hu>alternative mozilla-based browser</hu>
   <id>alternative mozilla-based browser</id>
   <is>alternative mozilla-based browser</is>
   <it>browser alternativo basato su mozilla</it>
   <ja_JP>alternative mozilla-based browser</ja_JP>
   <ja>alternative mozilla-based browser</ja>
   <kk>alternative mozilla-based browser</kk>
   <ko>alternative mozilla-based browser</ko>
   <lt>alternative mozilla-based browser</lt>
   <mk>alternative mozilla-based browser</mk>
   <mr>alternative mozilla-based browser</mr>
   <nb>alternative mozilla-based browser</nb>
   <nl>alternatieve op mozilla gebaseerde browser</nl>
   <pl>alternatywna przeglądarka oparta na Mozilli</pl>
   <pt_BR>Navegador web alternativo baseado em código da Mozilla</pt_BR>
   <pt>Navegador web alternativo baseado no firefox da Mozilla</pt>
   <ro>alternative mozilla-based browser</ro>
   <ru>Браузер основанный на Firefox (сохранена поддержка дополнений на XUL/XPCOM)</ru>
   <sk>alternative mozilla-based browser</sk>
   <sl>Alternativni brskalnik, ki temelji na Mozilli</sl>
   <sq>alternative mozilla-based browser</sq>
   <sr>alternative mozilla-based browser</sr>
   <sv>alternativ mozilla-baserad webbläsare</sv>
   <tr>alternative mozilla-based browser</tr>
   <uk>alternative mozilla-based browser</uk>
   <zh_CN>alternative mozilla-based browser</zh_CN>
   <zh_TW>alternative mozilla-based browser</zh_TW>
</description>

<installable>
all
</installable>

<screenshot></screenshot>

<preinstall>
if ! sed  -re '/^[[:space:]]*#/d; /^[[:space:]]*deb[[:space:]]+/!d' /etc/apt/sources.list{,.d/*.list} \
| grep -sq repo.vivaldi.com/stable/deb ; then
echo "deb http://repo.vivaldi.com/stable/deb/ stable main">/etc/apt/sources.list.d/mxpitemp.list
fi

wget http://repo.vivaldi.com/stable/linux_signing_key.pub -O /tmp/vivaldi.key
echo "apt-key add /tmp/vivaldi.key"
( apt-key add /tmp/vivaldi.key ) 2>/dev/null
rm /tmp/vivaldi.key
echo "add Vivaldi Package Composer KEY04 packager@vivaldi.com"
# 68AE AE71 F9FA 1587 03C1  CBBC 8D04 CE49 EFB2 0B23
echo "KEY finderprint: 68AE AE71 F9FA 1587 03C1  CBBC 8D04 CE49 EFB2 0B23"
# this key expires at expires: 2020-01-25
#( apt-key adv --keyserver keyserver.ubuntu.com --recv-keys  8D04CE49EFB20B23 ) 2>/dev/null
KEY="
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1

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
=/TZJ
-----END PGP PUBLIC KEY BLOCK-----
"
echo "$KEY" | ( apt-key add - ) 2>/dev/null
apt-get update
</preinstall>

<install_package_names>
vivaldi-stable
</install_package_names>


<postinstall>
rm /etc/apt/sources.list.d/mxpitemp.list 2>/dev/null
</postinstall>


<uninstall_package_names>
vivaldi-stable
</uninstall_package_names>
</app>
