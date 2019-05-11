#!/usr/bin/env bash
sudo apt update
sudo apt install apache2
sudo ufw app list
sudo apt install ufw
sudo apt install ufw app list
sudo ufw app info "WWW Full "
sudo ufw app allow in "WWW Full "
sudo systemctl enable apache2
cd /var/www/html/
ls
rm index.nginx-debian.html
vim index.html
ls
sudo apt install mariadb-server
sudo mysql_secure_installation
sudo mariadb
mariadb -u admin -p
sudo apt install php libapache2-mod-php php-mysql
sudo vim /etc/apache2/mods-enabled/dir.conf 
sudo systemctl restart apache2
sudo systemctl status apache2
sudo vim index.php

