#!/bin/sh

set -e -u -x

# git clone resource-sbalpi-dev snapshot
# cp -r node_modules snapshot

cp -r node_modules resource-sbalpi
cd resource-sbalpi

npm remove jest
rm -r src/__test__

npm pack

ls -la
cd ..
git clone resource-sbalpi snapshot
rm snapshot/sbalpi*
cp resource-sbalpi/sbalpi* snapshot
cd snapshot
ls -la
git config --global user.email "e.ivaskevicius@iplabs.de"
git config --global user.name "eivaskevicius"
npm version patch
git add -A
git status
git commit -m "add snapshot"
git pull