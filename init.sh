#!/bin/bash

echo ""
echo "#####################################"
echo "#                                   #"
echo "#     Initializing docker sawrm     #"
echo "#                                   #"
echo "#####################################"
echo ""

docker swarm init

echo ""
echo "#####################################"
echo "#                                   #"
echo "#     Creating docker networks      #"
echo "#                                   #"
echo "#####################################"
echo ""

docker network create -d overlay zookeeper-net
docker network create -d overlay producer-net
docker network create -d overlay consumer-net

echo ""
echo "#####################################"
echo "#                                   #"
echo "#    Deploying stack stack_fiap     #"
echo "#                                   #"
echo "#####################################"
echo ""

docker stack deploy -c docker-compose.yml stack_fiap