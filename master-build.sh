#!/bin/bash

#first  create a network for the machines to run in

docker network create --driver bridge gethbridge

# then build all the images  for the geth and provision machines

cd provision
./build.sh
cd ../provision_prod
./build.sh

cd ../provision_stage
./build.sh

cd ../geth
./build.sh

cd ../geth_prod
./build.sh

cd ../geth_stage
./build.sh

# this is the debug machine - you can run it inside the network and prod it

cd ../debug
./build.sh

