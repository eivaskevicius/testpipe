#!/bin/sh

set -e -u -x

git clone resource-sbalpi snapshot
cd resource-sbalpi

dock="docker-"
sbalpi=$(ls sbalpi*)
sbalpi=${sbalpi:0:12}
dock="$dock$sbalpi"
dockname="$dock.tar"

docker build -t eivaskevicius/$dock .
docker save -o $dockname eivaskevicius/$dock

cd ..
rm snapshot/docker*
cp resource-sbalpi/docker* snapshot
cd snapshot

git config --global user.email "e.ivaskevicius@iplabs.de"
git config --global user.name "eivaskevicius"
git add -A
git status
git commit -m "add docker"
git pull