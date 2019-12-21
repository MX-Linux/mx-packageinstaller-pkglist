<?xml version="1.0"?>
<app>

<category>
Browser
</category>

<name>
Waterfox
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
if [ "$(locale |grep LANG|cut -d= -f2 |cut -d_ -f1)" != "en" ]; then
apt-get install waterfox-classic-i18n-$(locale |grep LANG|cut -d= -f2 |cut -d_ -f1)
fi
</postinstall>


<uninstall_package_names>
waterfox-classic-kpe
</uninstall_package_names>
</app>
