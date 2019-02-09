#!/bin/bash

# clone the code
git clone https://github.com/danmermel/nottariofiat.git

# build the docker image
docker build --tag=provmachine .
#docker run -p 30303:30303 -p 8545:8545 -v /home/daniel/docker:/home/geth gethmachine

# remove nottariofiat code
rm -rf nottariofiat
