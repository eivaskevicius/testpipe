#!/bin/sh

set -e -u -x

# docker build -t eivaskevicius/$dock .
# docker save -o $dockname eivaskevicius/$dock

# source /docker-lib.sh
# start_docker

cp snapshot/sbalpi* resource-sbalpi
cd resource-sbalpi

# dock="docker-"
# sbalpi=$(ls sbalpi*)
# sbalpi=${sbalpi:0:12}
# dock="$dock$sbalpi"
# dockname="$dock.tar"

service docker start
service docker status
sleep 5
docker build -t eivaskevicius/$dock .
docker save -o $dockname eivaskevicius/$dock

service docker stop
cd ..
rm snapshot/docker*
cp resource-sbalpi/docker* snapshot
cd snapshot

git config --global user.email "e.ivaskevicius@iplabs.de"
git config --global user.name "eivaskevicius"
git pull
git add -A
git status
git commit -m "add docker"
