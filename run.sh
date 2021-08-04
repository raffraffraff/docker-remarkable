#!/bin/bash

# If ~/.remarkable does not exist, docker creates it during -v mount and it ends up owned by root!
mkdir -p ${HOME}/.remarkable

# Run remarkable:latest with your Xorg display, ~/.remarkable and ~/Documents mounted
docker run \
  -it --rm \
  --privileged \
  -e DISPLAY \
  -e DBUS_SESSION_BUS_ADDRESS \
  -v /run/user/1000/bus:/run/user/1000/bus \
  -v /var/run/dbus:/var/run/dbus \
  -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
  -v /etc/localtime:/etc/localtime:ro \
  -v /usr/share/icons:/usr/share/icons:ro \
  -v /usr/share/themes:/usr/share/themes:ro \
  -v ${HOME}/.Xauthority:${HOME}/.Xauthority:ro \
  -v ${HOME}/Documents:${HOME}/Documents \
  -v ${HOME}/.remarkable:${HOME}/.remarkable \
  -v ${HOME}/.config:${HOME}/.config \
  --name="remarkable" \
  remarkable:latest
