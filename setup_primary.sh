#!/bin/bash

if [ -z "$1" ];then
    echo "Not a possible to create a DNS Server because of the IP address not be found"
    exit
else
    cd primary
    sed -i "s/PRIMARY/$1/" db.asa.br
    sed -i "s/PRIMARY/$1/" named.conf.default-zones
fi

if [ -z "$2" ];then
    sed -i "s/SECONDARY/127.0.0.1/" db.asa.br
    sed -i "s/SECONDARY/127.0.0.1/" named.conf.default-zones
else
    sed -i "s/SECONDARY/$2/" db.asa.br
    sed -i "s/SECONDARY/$2/" named.conf.default-zones
fi

docker-compose up -d