#!/bin/bash

#CLONE REPO
echo "Cloning repo...."
git clone $1 clonefolder

#BUILD IMAGE
echo "Building image...."
docker build ./clonefolder -t $2:builder

#DOCKER HUB
echo "Pushin to dockerhub...."
docker login --username $3 --password $4
docker tag $2:builder $3/builder
docker push $3/builder
