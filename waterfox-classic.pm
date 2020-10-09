<?xml version="1.0" encoding="UTF-8"?>
<app>

<category>
Browser
</category>

<name>
Waterfox Classic
</name>

<description>
   <am>alternative mozilla-based browser</am>
   <ar>alternative mozilla-based browser</ar>
   <bg>alternative mozilla-based browser</bg>
   <bn>alternative mozilla-based browser</bn>
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
   <vi>alternative mozilla-based browser</vi>
   <zh_CN>alternative mozilla-based browser</zh_CN>
   <zh_TW>alternative mozilla-based browser</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>https://www.waterfoxproject.org/media/img/waterfox/products/desktop/waterfox-browser.40990c516643.svg</screenshot>

<preinstall>
</preinstall>

<install_package_names>
waterfox-classic-kpe
</install_package_names>


<postinstall>

# KDE Plasma intergration
if pgrep -x plasmashell >/dev/null; then
   PKGKDE="waterfox-classic-kde"
else
   PKGKDE=""
fi

# add xfce helper preferred applcations
HELPER='[Desktop Entry]
Version=1.0
Encoding=UTF-8
Icon=waterfox-classic
Name=Waterfox Classic
NoDisplay=true
StartupNotify=false
Terminal=false
Type=X-XFCE-Helper
X-XFCE-Binaries=waterfox-classic;
X-XFCE-Category=WebBrowser
X-XFCE-Commands=%B;
X-XFCE-CommandsWithParameter=%B "%s";
'
if [ -d /usr/share/xfce4/helpers ]; then
   echo "$HELPER" > /usr/share/xfce4/helpers/waterfox-classic.desktop
fi
	 
if [ "${LANG%%.*}" = "en_US" ]; then
   PKGI18N=""
else
	echo "Checking available language packs..."
	# check available language packs
	lang=${LANG%%.*}  # trim .UTF-8 
	lang=${lang,,}    # lower case
	lang=${lang//_/-} # underscore to hyphen
	lang2=${lang%%-*} # 2letter lang code; 
	# lookup all available; put locale code into array
	I18N=( $(LANG=C apt-cache policy  'waterfox-classic-i18n-*' | \
	        sed -nr '/waterfox-classic-i18n-([^:]+):/s//\1/p' ) )
	
	if printf '%s\n' "${I18N[@]}" | grep -sq "$lang"; then
	   PKGI18N=waterfox-classic-i18n-$lang
	elif printf '%s\n' "${I18N[@]}" | grep -v -- - | grep -sq "$lang2"; then
	   PKGI18N=waterfox-classic-i18n-$lang2
	elif printf '%s\n' "${I18N[@]}" | grep -sq "${lang2}-${lang2}"; then
	   PKGI18N=waterfox-classic-i18n-${lang2}-${lang2}
	else
	   echo "No language packs found for $LANG"
	fi
fi
if [ -n "$PKGI18N" -o -n "$PKGKDE" ]; then
	echo "Installing  $PKGKDE $PKGI18N"
	apt-get -y install $PKGKDE $PKGI18N
fi 
echo Done!
	
</postinstall>

<uninstall_package_names>
waterfox-classic-kpe
</uninstall_package_names>

<postuninstall>
if [ -f /usr/share/xfce4/helpers/waterfox-classic.desktop ]; then
   rm   /usr/share/xfce4/helpers/waterfox-classic.desktop
fi
</postuninstall>
</app>
