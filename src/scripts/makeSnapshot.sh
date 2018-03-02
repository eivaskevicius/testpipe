#!/bin/sh

set -e -u -x

cp -r node_modules resource-sbalpi
cd resource-sbalpi

npm remove jest
rm -r src/__test__

npm pack
cd ..
git clone resource-sbalpi snapshot
rm snapshot/sbalpi*
cp resource-sbalpi/sbalpi* snapshot
cd snapshot
npm version patch
