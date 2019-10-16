#!/bin/bash

#force rebuild of dkms packages (virtualbox, nvidia, fglrx, broadcom, ndiswrapper)
#part of mx-packageinstaller


[[ $(dpkg-query --show $1 2>/dev/null && echo $?) ]] || exit 0


for i in $(dpkg-query -l |grep "\-dkms" |awk '{print $2'}); do
 dpkg-reconfigure $i |tee -a /var/log/rebuild-dkms.log
done

exit 0
