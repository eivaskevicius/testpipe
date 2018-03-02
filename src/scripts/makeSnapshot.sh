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
mv resource-sbalpi/sbalpi* snapshot/snapshots
cd snapshot
ls -la
git add -A
git status
git commit -m "add snapshot"
git pull
git push