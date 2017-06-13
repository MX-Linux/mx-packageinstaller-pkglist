#!/bin/bash

#install extension pack into virtualbox, add users to appropriate groups
#part of mx-packageinstaller

wget http://download.virtualbox.org/virtualbox/$(echo $(vboxmanage -v) | cut -d 'r' -f 1)/Oracle_VM_VirtualBox_Extension_Pack-$(echo $(vboxmanage -v) | cut -d 'r' -f 1)-$(echo $(vboxmanage -v) | cut -d 'r' -f 2).vbox-extpack
ret=$?

if [ $ret = 0 ]; then
vboxmanage extpack install Oracle_VM_VirtualBox_Extension_Pack-$(echo $(vboxmanage -v) | cut -d 'r' -f 1)-$(echo $(vboxmanage -v) | cut -d 'r' -f 2).vbox-extpack --replace
fi

rm -f Oracle_VM_VirtualBox_Extension_Pack-$(echo $(vboxmanage -v) | cut -d 'r' -f 1)-$(echo $(vboxmanage -v) | cut -d 'r' -f 2).vbox-extpack
gpasswd -M $(getent group users | cut -d: -f4) vboxusers
exit 0