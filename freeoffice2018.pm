<?xml version="1.0"?>
<app>

<category>
Office
</category>

<name>
SoftMaker FreeOffice 2018
</name>

<description>
   <am>French localisation of Firefox</am>
   <ar>French localisation of Firefox</ar>
   <bg>French localisation of Firefox</bg>
   <ca>Localització de Firefox en Francès</ca>
   <cs>French localisation of Firefox</cs>
   <da>Fransk oversættelse af Firefox</da>
   <de>Französische Lokalisierung von Firefox</de>
   <el>Γαλλικός εντοπισμός του Firefox</el>
   <en>French localisation of Firefox</en>
   <es>Localización Francés de Firefox</es>
   <et>French localisation of Firefox</et>
   <eu>French localisation of Firefox</eu>
   <fa>French localisation of Firefox</fa>
   <fil_PH>French localisation of Firefox</fil_PH>
   <fi>French localisation of Firefox</fi>
   <fr>Localisation française pour Firefox</fr>
   <he_IL>French localisation of Firefox</he_IL>
   <hi>French localisation of Firefox</hi>
   <hr>French localisation of Firefox</hr>
   <hu>French localisation of Firefox</hu>
   <id>French localisation of Firefox</id>
   <is>French localisation of Firefox</is>
   <it>Localizzazione francese di Firefox</it>
   <ja_JP>French localisation of Firefox</ja_JP>
   <ja>French localisation of Firefox</ja>
   <kk>French localisation of Firefox</kk>
   <ko>French localisation of Firefox</ko>
   <lt>French localisation of Firefox</lt>
   <mk>French localisation of Firefox</mk>
   <mr>French localisation of Firefox</mr>
   <nb>French localisation of Firefox</nb>
   <nl>Franse lokalisatie van Firefox</nl>
   <pl>Francuska lokalizacja przeglądarki Firefox</pl>
   <pt_BR>Francês Localização para Firefox</pt_BR>
   <pt>Francês Localização para Firefox</pt>
   <ro>French localisation of Firefox</ro>
   <ru>Французская локализация Firefox</ru>
   <sk>French localisation of Firefox</sk>
   <sl>French localisation of Firefox</sl>
   <sq>French localisation of Firefox</sq>
   <sr>French localisation of Firefox</sr>
   <sv>Fransk lokalisering av Firefox</sv>
   <tr>Firefox'un Fransızca yerelleştirmesi</tr>
   <uk>French локалізація Firefox</uk>
   <zh_CN>French localisation of Firefox</zh_CN>
   <zh_TW>French localisation of Firefox</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>

echo "---------------------"
echo "FreeOffice Installer "
echo "---------------------"

# softmaker repo-key
KEY="
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1

mQENBFpOLj4BCAC8XZffd/y5zonHkCFswGagKUO4dYo0VTpHouHo3aShVpw4J/Xh
EHzmMuFN7gAt1wa/mnp8k3gZkj1SvcY/nnFxGE/8SL6nuUzZY8yUbuTP8xkp31U+
kQUpBCefip2ZHdFg3bYMGkWDDVm0cMo7nD1rznNN8GSC8UU8Y6YFrodUc/WIpgEo
GqbS3opFgwMBdrt/+wWTz4/+N5tC4HQXG2IMoC4fodydQu+6iN+cgZVibpJeRybW
rQkmMJAUydBy+o3CRhIE8yFnaJ4mWZieZQy78sWw5bZPFHjg3kOEIxSncFaYHfWY
otRGbQlenA4ij9pqyAJtqBT4LqBET2FHqcmJABEBAAG0RVNvZnRNYWtlciByZXBv
c2l0b3J5IChHUEcga2V5IGZvciBzaWduaW5nIGZpbGVzKSA8aW5mb0Bzb2Z0bWFr
ZXIuY29tPokBOAQTAQIAIgUCWk4uPgIbAwYLCQgHAwIGFQgCCQoLBBYCAwECHgEC
F4AACgkQNBPamKo+f14imQf+PwJOZwTS+3zVQRjBgPjtxSdsOcONnjNhvYoe3N+v
NQZZMOlksndviM7AMB7kcYV5NWiawYvvbg7knpsMdgMzvToB0CpKQ/K7oy8kAq0O
HdtA1HwV/23ExH+EcAtCZnzD8YopRXlcoN6hGG4GkDzSf/Rnj4b6ImtKVBcy0R43
BbbL6cMFJj3Gw51MoxR9ZXBV4job+9T3pt7rCb1mnq4x8ocCLvtT7vgs0QnwC+Pb
PgHXHHTYKcFeoZf3IrGx9ZcMKCbShC0LQv5Kn8PiQZXgIf24RQvp4ib1XO1lY38W
3q4VvxvJIxkmbjGnADwUaESz/hP8I0j5OIVM5Uefb/k0oQ==
=YG9D
-----END PGP PUBLIC KEY BLOCK-----
"
echo "adding Softmaker repository key: 0x3413DA98AA3E7F5E"
echo "$KEY" | gpg --keyid-format="0xlong"  2>/dev/null

# curl -RLJ https://shop.softmaker.com/repo/linux-repo-public.key | apt-key add -
# echo "$KEY" | ( apt-key add - ) 2>/dev/null

rm /etc/apt/trusted.gpg.d/softmaker-keyring.gpg 2>/dev/null
echo "$KEY" | sudo gpg -o /etc/apt/trusted.gpg.d/softmaker-keyring.gpg --dearmor 2>/dev/null

echo "adding Softmaker repository  /etc/apt/sources.list.d/softmaker.list:"
echo "deb http://shop.softmaker.com/repo/apt wheezy non-free"

rm /etc/apt/sources.list.d/softmaker.list 2>/dev/null
echo "deb http://shop.softmaker.com/repo/apt wheezy non-free" > /etc/apt/sources.list.d/softmaker.list

apt-get update

</preinstall>

<install_package_names>
softmaker-freeoffice-2018
</install_package_names>

<postinstall>

</postinstall>

<uninstall_package_names>
softmaker-freeoffice-2018
</uninstall_package_names>

<postuninstall>

echo "removing Softmaker repository key"
apt-key del 0x3413DA98AA3E7F5E

echo "removing Softmaker repository  /etc/apt/sources.list.d/softmaker.list"
rm /etc/apt/sources.list.d/softmaker.list
echo "DONE"

</postuninstall>

</app>
