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
opkg install php7-mod-shmop
opkg install php7-mod-simplexml
opkg install php7-mod-snmp
opkg install php7-mod-soap
opkg install php7-mod-sockets		
opkg install php7-mod-sqlite3
opkg install php7-mod-sysvmsg
opkg install php7-mod-sysvsem
opkg install php7-mod-sysvshm
opkg install php7-mod-tokenizer 	
opkg install php7-mod-xml		
opkg install php7-mod-xmlreader
opkg install php7-mod-xmlwriter
opkg install php7-mod-zip
opkg install php7-pecl-mcrypt
opkg install mariadb-client-extra
opkg install mariadb-server
#скоировать папки: etc/config, etc/nginx, /relvar, /web и файлы: /etc/hosts, /etc/php.ini
 
opkg install spawn-fcgi

/etc/init.d/php7-fastcgi restart
/etc/init.d/nginx restart
/etc/init.d/uhttpd stop
/etc/init.d/dnsmasq restart

#прописать dns в lusi  и на пк


dd if=/dev/zero of=/swapfile1 bs=1024 count=500000

mkswap /swapfile1	

swapon /swapfile1


mysql_install_db
/etc/init.d/mysqld start
mysqladmin -u root password 'Passw0rd'


php.ini


[MySQL]
mysql.default_socket = /var/run/mysqld/mysqld.sock
pdo_mysql.default_socket = /var/run/mysqld/mysqld.sock
mysqli.default_socket = /var/run/mysqld/mysqld.sock

# старт сервера скьюл после перезагрузки
#swapon /swapfile1
#/etc/init.d/mysqld start




mysql -u root -p
create database 11;
\q


kmod-fs-ntfs
opkg install kmod-fs-vfat

opkg install  kmod-nls-cp437

opkg install kmod-nls-iso8859-1



# разделить флешку на 3 раздела с помощью cfdisk /dev/sda



block detect > /etc/config/fstab

#с помощью vi /etc/config/fstab в файле fstab переименовать /sda1 в /overlay  у всех sda выставить option enabled '1'








reboot



opkg update



opkg install php7-mod-pdo-mysql php7-mod-pdo php7-mod-mysql

opkg install php7-mod-mcrypt   





opkg install nginx-all-module




opkg install spawn-fcgi
/usr/bin/spawn-fcgi -a 127.0.0.1 -p 9000 -C 2 -f /usr/bin/php-cgi



opkg install nginx


/etc/init.d/nginx enable
/etc/init.d/nginx start

opkg install mysql-server


mkdir -p /mydev 



mkdir /mydev/data
mkdir /mydev/data/mysql
mkdir /mydev/data/tmp

mysql_install_db --force

/etc/init.d/mysqld enable
/etc/init.d/mysqld start
/usr/bin/mysqladmin -u root password XXXXXX  

opkg install shadow-useradd shadow-groupadd
mkdir /mydev/www
groupadd myweb
useradd -g myweb webadmin
chown -R webadmin:myweb /mydev/www


opkg install php7 php7-cgi php7-cli php7-fastcgi php7-fpm php7-mod-bcmath php7-mod-calendar php7-mod-ctype php7-mod-curl php7-mod-dom php7-mod-exif php7-mod-fileinfo php7-mod-ftp php7-mod-gd php7-mod-gettext php7-mod-gmp php7-mod-hash php7-mod-iconv php7-mod-imap php7-mod-intl php7-mod-json php7-mod-ldap php7-mod-mbstring php7-mod-mysqli php7-mod-mysqlnd php7-mod-opcache php7-mod-openssl php7-mod-pcntl php7-mod-pdo php7-mod-pdo-mysql php7-mod-pdo-pgsql php7-mod-pdo-sqlite php7-mod-pgsql 
opkg install php7-mod-phar php7-mod-session php7-mod-shmop php7-mod-simplexml php7-mod-snmp php7-mod-soap php7-mod-sockets php7-mod-sqlite3 php7-mod-sysvmsg php7-mod-sysvsem php7-mod-sysvshm php7-mod-tokenizer php7-mod-xml php7-mod-xmlreader php7-mod-xmlwriter php7-mod-zip php7-pecl-dio php7-pecl-http php7-pecl-krb5 php7-pecl-libevent php7-pecl-mcrypt php7-pecl-propro php7-pecl-raphf php7-pecl-redis 







opkg install f2fs-tools
opkg install libf2fs


mkfs.f2fs -l overlay /dev/sda1 

mkfs.f2fs -l data /dev/sda2
	


opkg install block-mount

block detect >> /etc/config/fstab



