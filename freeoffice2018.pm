<?xml version="1.0"?>
<app>

<category>
Office
</category>

<name>
SoftMaker FreeOffice 2018
</name>

<description>
   <am>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</am>
   <ar>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</ar>
   <bg>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</bg>
   <ca>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</ca>
   <cs>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</cs>
   <da>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</da>
   <de>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</de>
   <el>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</el>
   <en>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</en>
   <es>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</es>
   <et>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</et>
   <eu>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</eu>
   <fa>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</fa>
   <fi>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</fi>
   <fr>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</fr>
   <he_IL>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</he_IL>
   <hi>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</hi>
   <hr>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</hr>
   <hu>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</hu>
   <id>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</id>
   <is>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</is>
   <it>SoftMaker FreeOffice 2018v</it>
   <ja_JP>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</ja_JP>
   <ja>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</ja>
   <kk>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</kk>
   <ko>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</ko>
   <lt>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</lt>
   <mk>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</mk>
   <nb>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</nb>
   <nl>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</nl>
   <pl>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</pl>
   <pt_BR>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</pt_BR>
   <pt>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</pt>
   <ro>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</ro>
   <ru>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</ru>
   <sk>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</sk>
   <sl>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</sl>
   <sq>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</sq>
   <sr>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</sr>
   <sv>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</sv>
   <tr>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</tr>
   <uk>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</uk>
   <zh_CN>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</zh_CN>
   <zh_TW>SoftMaker FreeOffice 2018 is a fast, compatible and reliable office suite</zh_TW>
</description>

<installable>
all
</installable>

<screenshot>none</screenshot>

<preinstall>
curl -RLJ https://shop.softmaker.com/repo/linux-repo-public.key | apt-key add -
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
</app>
