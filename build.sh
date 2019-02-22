#!/bin/bash
IMAGE_NAME="hashnode-extensions-builder"

docker build -t hashnode-extensions-builder .

docker run --name $IMAGE_NAME -it --rm -v "$(pwd)/build:/app/build" $IMAGE_NAME npm run build-all

docker rmi $IMAGE_NAME