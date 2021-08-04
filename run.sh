#!/bin/bash

# If ~/.remarkable does not exist, docker creates it during -v mount and it ends up owned by root!
mkdir -p ${HOME}/.remarkable

# Run remarkable:latest with your Xorg display, ~/.remarkable and ~/Documents mounted
docker run \
  -it --rm \
  -e DISPLAY \
  -v ${HOME}/.Xauthority:${HOME}/.Xauthority:ro \
  -v ${HOME}/Documents:${HOME}/Documents \
  -v ${HOME}/.remarkable:${HOME}/.remarkable \
  -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
  -v /etc/localtime:/etc/localtime:ro \
  --name="remarkable" \
  remarkable:latest
