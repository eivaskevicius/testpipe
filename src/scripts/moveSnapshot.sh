#!/bin/sh

set -e -u -x

git config --global user.email "e.ivaskevicius@iplabs.de"
git config --global user.name "eivaskevicius"
cp -r node_modules resource-sbalpi-dev

cd 

git add -A
git status
git commit -m "add snapshot"
git pull
git checkout develop
npm version patch
git commit -m "change version"
git push
git checkout snapshot