#!/bin/bash

IMAGE_NAME=grype-demo:latest

echo "Generating SBOM..."

syft $IMAGE_NAME \
-o cyclonedx-json \
> reports/sbom.json

echo "SBOM saved at reports/sbom.json"
