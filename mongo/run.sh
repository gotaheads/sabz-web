#!/bin/bash
set -e
source env.sh

echo "Stop and remove $CONTAINER if running..."
docker stop $CONTAINER || true
docker rm $CONTAINER || true

docker run --name $CONTAINER \
-p $POST_MONGODB:$POST_MONGODB \
-d $IMAGE_TAG

#WORK_DIR=`pwd`
#echo "Running $CONTAINER, posgres: $POSTGRES_USER/$POSTGRES_PASSWORD volum is mapped with $WORK_DIR/data using OPTIONS:$OPTIONS "
#docker run --name $CONTAINER -e TZ=Australia/Perth \
#-e POSTGRES_USER=$POSTGRES_USER -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
#-v ${WORK_DIR}:/data \
#-p 65432:5432 -d $OPTIONS \
# $IMAGE_TAG || { echo 'docker run failed' ; exit 1; }

