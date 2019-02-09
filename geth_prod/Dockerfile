# Use an official Ubuntu runtime as a parent image
FROM gethmachine

# Run the command to start the geth syncing when the container launches
CMD ["geth", "--syncmode", "light",  "--rpc", "--rpcaddr", "0.0.0.0", "--unlock", "95b93f2c5ca4a178914476ec95815a83d6e75f94", "--password", "/home/geth/pass_file"]
