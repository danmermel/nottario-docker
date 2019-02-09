#!/bin/bash

mkdir -p .ethereum/keystore
cp UTC--2018-04-01T14-32-19.197080645Z--95b93f2c5ca4a178914476ec95815a83d6e75f94 .ethereum/keystore
docker build --tag=gethmachine_prod .
#docker run --rm -p 30303:30303 -p 8545:8545 -v /home/daniel/docker/geth_prod:/home/geth --network=gethbridge --name=gethmachine.com gethmachine_prod
