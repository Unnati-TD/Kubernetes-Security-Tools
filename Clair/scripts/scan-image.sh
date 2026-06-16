#!/bin/bash

echo "Uploading image for Clair analysis..."

echo "In production, image metadata would be submitted to Clair API."

curl http://localhost:6060/health
