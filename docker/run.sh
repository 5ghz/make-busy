#!/bin/sh

export NETWORK=${1:-"kazoo"}

echo :: Starting network: $NETWORK
docker network create $NETWORK

cd makebusy-fs
./run-all.sh

cd ../makebusy
./run.sh
