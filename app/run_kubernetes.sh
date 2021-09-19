#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="abdocer123/mlapp:latest"

# Step 2
# Run the Docker Hub container with kubernetes
sudo docker login
kubectl run mlappservice --image=$dockerpath --port=80
echo 'Kuberentes ml app successfully running'


# Step 3:
# List kubernetes pods
kubectl get pods
echo 'Found the pods running for mlapp'

# Step 4:
# Forward the container port to a host
kubectl port-forward mlappservice 8000:80
echo 'port forward complete'
