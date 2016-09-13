#!/bin/sh
git pull
git submodule update --recursive
./withCompose.sh build cobl
./withCompose.sh build cobl_nexus
./withCompose.sh up -d nginx
./withCompose.sh up -d cobl_nexus
(cd backup; ./save.sh)
