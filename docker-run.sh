#!/bin/bash
sudo docker run --detach --net=host --publish 8099:8099 \
    --restart always \
    -v "$(pwd)"/config:/config \
    -v "$(pwd)"/server.js:/home/node/app/server.js \
    -v "$(pwd)"/helpers.js:/home/node/app/helpers.js \
    --name googlehomekodi \
    omertu/googlehomekodi