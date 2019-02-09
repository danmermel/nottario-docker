#!/bin/bash

mkdir -p .ethereum/rinkeby/keystore
cp UTC--2018-05-25T16-22-36.526144178Z--b75f45dce48fc9ff5f752e1014c9b52acc35c3a5 .ethereum/rinkeby/keystore
docker build --tag=gethmachine_stage .
#docker run --rm -p 30303:30303 -p 8545:8545 -v /home/daniel/docker/geth_stage:/home/geth --network=gethbridge --name=gethmachine.com gethmachine_stage
