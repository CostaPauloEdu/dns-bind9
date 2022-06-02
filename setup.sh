#!/bin/bash

if [ $1 == "primary" ];then
    echo "Creating the primary DNS server..."
    cd primary
    docker build -t azevedo.paulo/dns1 .
    docker-compose up -d
else
    if [ $1 == "secondary" ];then
        echo "Creating the secondary DNS server..."
        cd secondary
        docker build -t azevedo.paulo/dns2 .
        docker-compose up -d
    else
        echo "Invalid option!!"
    fi
fi
