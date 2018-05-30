
# AWS ECS Quickstart

This project contains a few bash scripts to build a Docker image and register it on Amazon ECR (Amazon Elastic Container Service). The image can then be used to run tasks on an Amazon ECS cluster (further scripts/templates to come to build the cluster and deploy the tasks).
A very rudimentary Python Flask app is also included.

## Scripts

* ```build_image.sh```: build the Docker image (see Dockerfile file)
* ```publish_version```: registers the image on Amazon ECR
* ```run_locally```: runs Docker image locally (for local tests)
* ```kill_locally```: kills the running container

