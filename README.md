# openresty-ledge-redis
Docker build for OpenResty:Ledge caching server with redis store.
[![Docker Build Status](https://img.shields.io/docker/build/wyvern8/openresty-ledge-redis.svg)](https://hub.docker.com/r/wyvern8/openresty-ledge-redis)

#### This repo contains:
  - a docker file to build: https://github.com/pintsized/ledge 
  - a docker-compose.yml to spin up ledge and redis
  - sample nginx config for ledge connected to docker redis
  - sample redis config to add creds

#### Installation
You can pull the image from docker hub and build your own config etc.
```
docker pull wyvern8/openresty-ledge-redis
```

To run the image with a test redis and origin using the local docker-compose.yml startin point:

1. Please update the redis pw from "changeit" in both redis.conf and nginx-ledge.conf

2. Ensure you have generated ssl certs before using the sample config. (see below)

3. run: `docker-compose up` 

4. browse to https://localhost/_info


#### Generating ssl certs
Go to the ./ssl dir of your clone of this repo and run:
```
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx.key -out nginx.crt
```


