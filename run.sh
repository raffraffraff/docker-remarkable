#!/bin/bash

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
