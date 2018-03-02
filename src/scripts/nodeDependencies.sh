#!/bin/sh

set -e -u -x

cd resource-sbalpi && npm install
cp -r node_modules ..