# Nottario Docker

This is a version of the Nottario infrastructure built with Docker containers.

## Getting Started

- clone this repo and cd into it 
- copy the staging & production `config.json` files into `provision_stage` and `provision_prod` respectively.
- copy the Ethereum private key and `pass_file` files into `geth_stage` and `geth_prod` respectively.
- run `./master_build.sh`

## Running a staging environment

Run the geth machine (in a screen):

```sh
docker run --rm -p 30303:30303 -p 8545:8545 -v "$PWD/geth_stage:/home/geth" --network=gethbridge --name=gethmachine.com gethmachine_stage
``

Periodically run the prov machine:

```sh
docker run --network=gethbridge provmachine-stage
```

## Running a production environment

Run the geth machine (in a screen):


```sh
docker run --rm -p 30303:30303 -p 8545:8545 -v "$PWD/geth_prod:/home/geth" --network=gethbridge --name=gethmachine.com gethmachine_prod
```

Periodically run the prov machine:

```sh
docker run --network=gethbridge provmachine-prod
```

## How does this work?

There is one container (gethmachine) that is an Ethereum node running constantly and staying in sync with the Ethereum blockchain.
There is another container (provmachine) that runs periodically, and checks whether there are Notarisation jobs that need to be submitted to the Ethereum blockchain.  

### Private network

The *gethbridge* private network allows the containers to see each other and interact.


### Building the gethmachine

This image starts from Ubuntu 18, creates a user called geth and installs the go/ethereum package.
It exposes two ports to the outside world:

- 30303 for block synchronisation
- 8545 to access the web3 API

*gethmachine* has two variants: gethmachine_stage and gethmachine_prod, which run the Ethereum testnet and mainnet respectively.
These images are built starting from gethmachine and simply adding the geth CMD with the appropriate parameters for testnet or mainnet.

### Running the stage/prod gethmachines

When you run these, you map the two network ports of the container to the host network port and you connect the container's home directory to the host's disk, so that blockchain data is retained and the container can see the private key and the password file.




