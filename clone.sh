#!/bin/bash

echo
echo
echo ---------------Clone DOCS----------------
git clone https://github.com/bti-training-20183/docs
echo
echo
echo ---------------Clone MODEL-PREPROCESS----------------
git clone https://github.com/bti-training-20183/model-preprocess
echo
echo
echo ---------------Clone MODEL-CREATE----------------
git clone https://github.com/bti-training-20183/model-create
echo
echo
echo ---------------Clone MODEL-DEPLOY----------------
git clone https://github.com/bti-training-20183/model-deploy
echo
echo
echo ---------------Clone EDGE-SERVER----------------
git clone https://github.com/bti-training-20183/edge-server
echo
echo
echo ---------------Clone CLOUD-SERVER----------------
git clone https://github.com/bti-training-20183/cloud-server
echo
echo
echo ---------------Clone FRONTEND----------------
git clone https://github.com/bti-training-20183/cloud-frontend
echo
echo ---------------Clone EDGE-PUT-DATA----------------
git clone https://github.com/bti-training-20183/edge-put-data
echo
read -p "Copy docs/docker-compose.yml to ./docker-compose.yml? (y/n)" -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cp ./docs/docker-compose.yml .
    echo "Copied docs/docker-compose.yml to ./docker-compose.yml"
fi
