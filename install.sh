#!/bin/bash
domain=$1;
set -e

sed -i -e "s/yourdomain.com/$1/g" /root/mumaradocker/docker-compose.yml;
git clone https://github.com/layen67/mumaradocker.git;
cd /root/mumaradocker;
docker-compose up -d;
cd /root/mumaradocker/www
wget https://www.dropbox.com/s/g2nb2nw65yyxz5o/Mumara2.28.tar.gz?dl=0
