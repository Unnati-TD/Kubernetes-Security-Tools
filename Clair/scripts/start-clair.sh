#!/bin/bash

echo "Starting Clair..."

cd clair

docker-compose up -d

echo "Clair started on port 6060"
