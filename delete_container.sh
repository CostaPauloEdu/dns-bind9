#!/bin/bash

if [ $1 == "primary" ];then
    cd primary
    docker-compose down
    cd ..
else
    if [ $1 == "secondary" ];then
        cd secondary
        docker-compose down
        cd ..
    else
        echo "Invalid option!"
    fi
fi