#!/bin/sh

set -e -u -x

git config --global user.email "e.ivaskevicius@iplabs.de"
git config --global user.name "eivaskevicius"
# git clone resource-sbalpi-dev snapshot
# cp -r node_modules snapshot

cp -r node_modules resource-sbalpi-dev
cd resource-sbalpi-dev

npm remove jest
rm -r src/__test__

npm pack

ls -la
git clone resource-sbalpi-dev snapshot
mv sbalpi* ../snapshot
cd ../snapshot
ls -la
git add -A
git status
git commit -m "add snapshot"
git pull