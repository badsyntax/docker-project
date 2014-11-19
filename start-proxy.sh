#!/bin/bash

docker run \
	--name=proxy \
	--detach=true \
	--publish=80:80 \
	--volume=/var/run/docker.sock:/tmp/docker.sock \
	jwilder/nginx-proxy:latest
