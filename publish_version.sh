#!/bin/bash

. ./config.sh

version=`date -u '+%Y%m%d_%H%M%S'`
image_version="${APP_NAME}-v${version}"

# Docker client ECR registry login
`aws ecr get-login --no-include-email`

src_image="$APP_NAME:latest"
des_image="${ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${ECR_REPO_NAME}:${image_version}"

echo "Creating alias '$des_image' for image '$src_image'"
docker tag $src_image $des_image

echo "Publishing image: $des_image on ECR registry"
docker push $des_image
