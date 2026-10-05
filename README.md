# AWS DevOps CI/CD Deployment Project

## Project Overview

This project demonstrates a basic AWS DevOps CI/CD pipeline for deploying a containerized web application on AWS EC2 Linux.

## Technologies

- AWS EC2
- Amazon Linux
- Git
- GitHub
- Jenkins
- Docker
- Nginx
- Bash
- HTML

## Architecture

Developer
    |
GitHub
    |
Jenkins
    |
Docker Build
    |
Docker Container
    |
Nginx
    |
Web Application

## Jenkins Pipeline

1. Checkout
2. Build Docker Image
3. Stop Existing Container
4. Remove Existing Container
5. Deploy New Container

## Application Port

EC2:

8080

Docker:

80

Port mapping:

8080:80

## Deployment

The Jenkins pipeline automatically retrieves the latest source code from GitHub, builds a Docker image, removes the previous container, and deploys the latest application.

## Linux Administration

The project also includes Linux administration activities such as:

- SSH
- Package installation
- Service management
- Permissions
- Process monitoring
- Disk monitoring
- Log monitoring
- Troubleshooting
