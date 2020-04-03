#!/bin/sh

# Start docker
docker-machine start default
# docker-machine env default
# eval "$(docker-machine env default)"

# Run tests
docker build -t runtests - < rfteid.Dockerfile
docker run  -v '/var/run/docker.sock:/var/run/docker.sock' --dns 8.8.8.8 runtests &