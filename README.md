# docker-remarkable
Remarkable is a markdown editor for Linux and Windows. This project helps you build a Remarkable docker container and run it on Linux.

## Why
There are multiple packaging-related github issues open on the Remarkable project. If you are using one of the Linux distributions that is not currently supported by the Remarkable .deb package, this project might be useful to you

## How
```
git clone https://github.com/raffraffraff/docker-remarkable.git
cd docker-remarkable
./build.sh
./run.sh
```

## Notes
* `/usr/share/icons` and `/usr/share/themes` are mounted Remarkable is themed correctly
* `~/.remarkable` is mounted so the config lives in your local home
* `--privileged` is set because DBUS requires it (for now)
* The container is large (~600mb) because desktop applications need a lot of libraries
