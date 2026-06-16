#!/bin/bash

echo "Building vulnerable image..."

docker build \
-t clair-demo:latest \
./app

echo "Image built successfully"
