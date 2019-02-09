# Use an official Ubuntu runtime as a parent image
FROM gethmachine

# Run the command to start the geth syncing when the container launches
CMD ["geth", "--syncmode", "light", "--rinkeby", "--rpc", "--rpcaddr", "0.0.0.0", "--unlock", "b75f45dce48fc9ff5f752e1014c9b52acc35c3a5", "--password", "/home/geth/pass_file"]
