#!/bin/bash

VERSION=latest
echo $GITHUB_TOKEN | docker login -u $GITHUB_USER --password-stdin docker.pkg.github.com	
docker create --name reactdemo -p 8000:80 docker.pkg.github.com/zerowasteteam/samplereact/sample-react:$VERSION
docker cp docker-environmentConfig.js reactdemo:/usr/share/nginx/html/environmentConfig.js
docker start reactdemo
