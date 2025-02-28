#!/bin/bash
echo "Logging into AWS ECR..."
aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 038462771019.dkr.ecr.eu-west-1.amazonaws.com/networkapp

echo "Stopping and removing existing container..."
docker stop myapp-container || true
docker rm myapp-container || true

echo "Pulling latest Docker image from ECR..."
docker pull 038462771019.dkr.ecr.eu-west-1.amazonaws.com/networkapp:latest

echo "Running new container..."
docker run -d --name myapp-container -p 8080:80 038462771019.dkr.ecr.eu-west-1.amazonaws.com/networkapp:latest
