#!/bin/bash

IMAGE_NAME=grype-demo:latest

echo "Starting vulnerability scan..."

grype $IMAGE_NAME \
-o json \
> reports/grype-report.json

echo "Scan completed"
echo "Report saved at reports/grype-report.json"
