#!/bin/bash

if [ -z "$1" ];then
    echo "Not a possible to create a DNS Server because of the IP address not be found"
    exit
else
    echo "Creating the secondary DNS server..."
    cd secondary
    sed -i "s/PRIMARY/$1/" named.conf.default-zones
fi

docker-compose up -d
