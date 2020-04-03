#!/bin/sh

# Setup docker
brew install docker
brew install docker-machine
brew cask install virtualbox
docker-machine create --driver virtualbox default # or docker-machine start default
docker-machine env default
eval "$(docker-machine env default)"

# Get firedrake image
docker pull firedrakeproject/firedrake-env:latest







