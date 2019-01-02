#!/usr/bin/env bash
docker rm liftree --force
docker build -t perezste/liftree -f docker/Dockerfile .
docker run -d -p 8080:80 --name liftree perezste/liftree:latest
docker exec -it liftree /bin/bash
