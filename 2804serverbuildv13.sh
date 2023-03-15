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

opkg update
opkg install nginx-all-module		
opkg install luci-nginx

#download to /etc/nginx https://raw.githubusercontent.com/nginx/nginx/master/conf/uwsgi_params
opkg install samba36-server
opkg install luci-app-samba
opkg install php7			
opkg install php7-fastcgi		
opkg install php7-cgi			
opkg install php7-cli
opkg install php7-mod-bcmath
opkg install php7-mod-calendar
opkg install php7-mod-ctype		
opkg install php7-mod-curl		
opkg install php7-mod-dom
opkg install php7-mod-exif		
opkg install php7-mod-fileinfo
opkg install php7-mod-ftp
opkg install php7-mod-gd
opkg install php7-mod-gettext
opkg install php7-mod-gmp
opkg install php7-mod-hash
opkg install php7-mod-iconv		
opkg install php7-mod-imap
opkg install php7-mod-intl
opkg install php7-mod-json		
opkg install php7-mod-ldap
opkg install php7-mod-mbstring		
opkg install php7-mod-mysqli
opkg install php7-mod-mysqlnd
opkg install php7-mod-opcache
opkg install php7-mod-openssl
opkg install php7-mod-pcntl
opkg install php7-mod-pdo
opkg install php7-mod-pdo-mysql
opkg install php7-mod-pdo-pgsql
opkg install php7-mod-pdo-sqlite
opkg install php7-mod-pgsql
opkg install php7-mod-phar
opkg install php7-mod-session		






