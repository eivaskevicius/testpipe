#!/bin/sh

set -e -u -x

cp -r node_modules resource-sbalpi
cd resource-sbalpi
npm test