#!/bin/bash

docker create --name reactdemo -p 8000:80 reactapp
docker cp environmentConfig.js reactdemo:/usr/share/nginx/html/environmentConfig.js
docker start reactdemo

