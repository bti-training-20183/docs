#!/bin/bash

echo
echo
echo ---------------UPDATE DOCS----------------
cd ./docs && git pull origin master;
echo
echo
echo ---------------UPDATE MODEL-PREPROCESS----------------
cd ..;
cd ./model-preprocess && git pull origin master;
echo
echo
echo ---------------UPDATE MODEL-CREATE----------------
cd ..;
cd ./model-create && git pull origin master;
echo
echo
echo ---------------UPDATE MODEL-DEPLOY----------------
cd ..;
cd ./model-deploy && git pull origin master;
echo
echo
echo ---------------UPDATE EDGE-SERVER----------------
cd ..;
cd ./edge-server && git pull origin master;
echo
echo
echo ---------------UPDATE CLOUD-SERVER----------------
cd ..;
cd ./cloud-server && git pull origin master;
echo
echo
echo ---------------UPDATE FRONTEND----------------
cd ..;
cd ./frontend && git pull origin master;
cd ..;
echo
read -p "Copy docs/docker-compose.yml to ./docker-compose.yml? (y/n)" -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cp ./docs/docker-compose.yml .
    echo "Copied docs/docker-compose.yml to ./docker-compose.yml"
fi
