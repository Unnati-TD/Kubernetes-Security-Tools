#!/bin/bash

echo "Building vulnerable image..."

docker build \
-t clair-demo:4.9.0 \
./app

echo "Image built successfully"
