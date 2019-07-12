#!/bin/bash
domain=$1;
set -e

sed -i -e "s/yourdomain.com/$1/g" /root/mumaradocker/docker-compose.yml;
git clone https://github.com/layen67/mumaradocker.git;
cd mumaradocker;
docker-compose up -d;
