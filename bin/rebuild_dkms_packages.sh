#!/bin/bash

#force rebuild of dkms packages (virtualbox, nvidia, fglrx, broadcom, ndiswrapper)
#part of mx-packageinstaller

[[ $(dpkg-query --show $1 2>/dev/null && echo $?) ]] || exit 0

kernel="$1"

#if no kernel parameter given, assume current kernel
if [ -z "$kernel" ]; then
	kernel="$(uname -r)"
fi

kernel=${kernel#"linux-image-"}
kernel=${kernel%-unsigned}

echo "update dkms modules for kernel: " $kernel |tee /var/log/rebuild-dkms.log
echo "see log at /var/log/rebuild-dkms.log"

/usr/lib/dkms/dkms_autoinstaller start $kernel |tee -a /var/log/rebuild-dkms.log

exit 0
