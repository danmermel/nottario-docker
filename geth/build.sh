#!/bin/bash

docker build --tag=gethmachine .
#docker run -p 30303:30303 -p 8545:8545 -v /home/daniel/docker/geth:/home/geth gethmachine
