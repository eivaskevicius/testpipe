#!/bin/sh

set -e -u -x

cd resource-sbalpi-dev && npm install
cp -r node_modules ..