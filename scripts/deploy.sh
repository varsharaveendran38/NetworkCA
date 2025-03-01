#!/bin/bash
echo "Stopping any existing Docker container..."
sudo docker stop my_app_container || true
sudo docker rm my_app_container || true

echo "Pulling latest Docker image..."
sudo docker pull 038462771019.dkr.ecr.eu-west-1.amazonaws.com/networkapp:latest

echo "Starting new container..."
sudo docker run -d -p 8080:80 --name my_app_container 038462771019.dkr.ecr.eu-west-1.amazonaws.com/networkapp:latest

