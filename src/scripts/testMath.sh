#!/bin/sh

set -e -u -x

cp -r node_modules resource-sbalpi-dev
cd resource-sbalpi-dev
npm test