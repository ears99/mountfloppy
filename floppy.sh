#!/bin/bash
# A bash script to mount/unmount a USB floppy drive.
# Must be run as root

OPTIONS="Mount Unmount"

select option in $OPTIONS; do
	if [ $REPLY = 1 ]; 
	then 
		echo "Mounting Drive, Please wait."
		mount -t msdos /mnt/floppy
		echo "Drive mounted. Please remember to unmount before removing a floppy disk."
		exit 0
	elif [ $REPLY = 2 ];
	then
		echo "Unmounting drive, Please wait."
		umount /mnt/floppy
		echo "Drive unmounted. You may now remove the floppy disk."
		exit 0
	fi
done
