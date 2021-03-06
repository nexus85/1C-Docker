#!/bin/sh

docker run --name 1c-server \
  --net host \
  --detach \
  --volume 1c-server-home:/home/usr1cv8 \
  --volume 1c-server-logs:/var/log/1C \
  --volume /etc/localtime:/etc/localtime:ro \
  nexus85/1c-server:8.3.10-2466v2
