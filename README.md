
# AWS ECS Quickstart

This project contains a few bash scripts to build a Docker image and register it on Amazon ECR (Amazon Elastic Container Service). The image can then be used to run tasks on an Amazon ECS cluster (further scripts/templates to come to build the cluster and deploy the tasks).
A very rudimentary Python Flask app is also included.

## Requirements

This project was built on a MacOS environment with the following tools installed:

* [AWS Command Line Interface](https://docs.aws.amazon.com/cli/latest/userguide/cli-install-macos.html)

* [Python3](https://www.python.org/downloads/mac-osx/)

* [Docker for Mac](https://www.docker.com/docker-mac)

## Scripts

Make sure you configure your AWS credentials (typically located at ```~/.aws/credentials```).

Here's the list of scripts available:

* ```build_image.sh```: build the Docker image (see Dockerfile file)
* ```publish_version```: registers the image on Amazon ECR
* ```run_locally```: runs Docker image locally (for local tests)
* ```kill_locally```: kills the running container

## ECS Cluster

The ECS cluster was manually created via the AWS Console to run the sample Flask app as an ECS task. Time permitting, I'll add scripts and templates to create the cluster here. Meanwhile, take a look at this [blog post](https://aws.amazon.com/blogs/aws/aws-fargate/) to learn how to deploy a cluster with [AWS Fargate](https://aws.amazon.com/fargate/) and never manage a server again :).