#!/bin/bash
domain=$1;
msqldbpass=$2;
set -e

git clone https://github.com/layen67/mumaradocker.git;
sed -i -e "s/yourdomain.com/$1/g" /root/mumaradocker/docker-compose.yml;
sed -i -e "s/password/$2/g" /root/mumaradocker/docker-compose.yml;
cd /root/mumaradocker;
docker-compose up -d;
sleep 5;
cd /root/mumaradocker/www;
wget https://www.dropbox.com/s/g2nb2nw65yyxz5o/Mumara2.28.tar.gz?dl=0;
tar xzvf Mumara2.28.tar.gz?dl=0;
sed -i -e "s/localhost/db/g" /root/mumaradocker/www/inc/db.ini.php;
sed -i -e "s/Mumara/mumara/g" /root/mumaradocker/www/inc/db.ini.php;
sed -i -e "s/saas.businessbox.xyz/$1/g" /root/mumaradocker/www/inc/db.ini.php;
sed -i -e "s/I6R9DmFgCdK4F2/$2/g" /root/mumaradocker/www/inc/db.ini.php;
