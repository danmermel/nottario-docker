# Use an official Ubuntu runtime as a parent image
FROM ubuntu:18.04

# create user geth
RUN useradd -d /home/geth -m -s /bin/bash geth && echo "geth:geth" | chpasswd && adduser geth sudo

# Set the working directory to /home/geth
WORKDIR /home/geth

# Install any needed packages specified in requirements.txt
# Install ethereum and geth
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get install -y ethereum

# Make port 80 available to the world outside this container
EXPOSE 30303
EXPOSE 8545

# make files owned by geth user
RUN chown -R geth:geth /home/geth

# switch user to not be root
USER geth

