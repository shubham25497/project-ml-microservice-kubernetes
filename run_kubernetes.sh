#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=Shubham25497/project-ml-microservice-kubernetes

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project-ml-microservice-kubernetes --image=$dockerpath:latest --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward project-ml-microservice-kubernetes-564bb77876-szr2t 8000:80
