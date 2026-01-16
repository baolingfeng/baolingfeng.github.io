#!/bin/bash

# Docker build script for Jekyll site with network retry support

echo "Building Docker image for Jekyll site..."
docker build --network host -t baolingfeng-jekyll .

echo ""
echo "Build successful! To run the site using Docker:"
echo "  docker run -p 4000:4000 -p 35729:35729 -v \$(pwd):/srv/jekyll baolingfeng-jekyll"
echo ""
echo "Or using docker-compose:"
echo "  docker-compose up"
echo ""
echo "Site will be available at: http://localhost:4000"
