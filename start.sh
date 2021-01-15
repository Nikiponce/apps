#!/bin/bash

case "$1" in
        "all")
            echo "all"
            cd ./proxy; docker-compose up --build -d; echo 'proxy started'
            cd ./bbdd; docker-compose up --build -d; echo 'bbdd started'
            cd ./portainer; docker-compose up --build -d; echo 'portainer started'
            ;;
        "proxy")
            echo "proxy"
            cd ./proxy; docker-compose up --build -d; echo 'proxy started'
            ;;
        "bbdd")
            echo "bbdd"
            cd ./bbdd; docker-compose up --build -d; echo 'bbdd started'
            ;;
        "portainer")
            echo "portainer"
            cd ./portainer; docker-compose up --build -d; echo 'portainer started'
            ;;
        "rabbitmq")
            echo "rabbitmq"
            cd ./portainer; docker-compose up --build -d; echo 'rabbitmq started'
            ;;
        "elastic")
            echo "elastic"
            cd ./portainer; docker-compose up --build -d; echo 'elastic started'
            ;;

        *)
            echo $"Usage: $0 {all|proxy|bbdd|portainer|rabbitmq|elastic}"
            exit 1
esac
