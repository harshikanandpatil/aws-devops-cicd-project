[200~#!/bin/bash

echo "Starting application deployment..."

echo "Stopping existing container..."
docker stop aws-devops-app 2>/dev/null || true

echo "Removing existing container..."
docker rm aws-devops-app 2>/dev/null || true

echo "Building Docker image..."
docker build -t aws-devops-app:latest .

echo "Starting new container..."
docker run -d \
	    --name aws-devops-app \
	        -p 8080:80 \
		    aws-devops-app:latest

echo "Checking running container..."
docker ps

echo "Deployment completed successfully!"
