opkg update

opkg install kmod-usb-core 
opkg install kmod-usb2               
opkg install kmod-usb-ohci
opkg install kmod-usb-storage
opkg install kmod-fs-ext4
opkg install e2fsprogs
opkg install mount-utils
opkg install cfdisk
opkg install f2fs-tools
opkg install libf2fs
opkg install block-mount
opkg install kmod-fs-f2fs
mkfs.ext4 /dev/sda1 
block detect > /etc/config/fstab
# reboot смонтировать и включить диск как корневой в luci 
mkdir -p /tmp/introot
mkdir -p /tmp/extroot
mount --bind / /tmp/introot
mount /dev/sda1 /tmp/extroot
tar -C /tmp/introot -cvf - . | tar -C /tmp/extroot -xf -
umount /tmp/introot
umount /tmp/extroot







