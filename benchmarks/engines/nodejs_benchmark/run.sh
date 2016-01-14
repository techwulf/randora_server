#! /bin/bash

docker run -i -t --rm \
	-p 3000:3000 \
	-v `pwd`:/src \
	masterfoo/docker-dev:0.1