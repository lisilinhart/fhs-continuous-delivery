# Build Image
`docker build -t lisi/hello-world .`

# List existing images
`docker images`

# Run container
`docker run -p 5000:3000 --name hello-world lisi/hello-world`

* `-p 5000:3000` the first port is the host port, whereas the second port is the port within the docker container 
* `--name hello-world` this commmand lets you create the container with a given name. With this name one can stop and restart this container again.
* `lisi/hello-world` this command tells us which image to use for our container

# View all containers (running and not running)
`docker ps -a`

# Stop containers
`docker stop hello-world`

# Remove stopped containers
`docker container prune`