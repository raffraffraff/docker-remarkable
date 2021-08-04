#!/bin/bash
docker build --build-arg USER=${USER} --build-arg UID=${UID} -t remarkable:latest .
