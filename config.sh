#!/bin/bash

if [ -z ${ACCOUNT_ID+x} ]; then
    export ACCOUNT_ID=`aws sts get-caller-identity --output text --query Account`
    echo "ACCOUNT_ID=$ACCOUNT_ID"
fi

if [ -z ${AWS_DEFAULT_REGION+x} ]; then
    export AWS_DEFAULT_REGION="us-east-1"
    echo "AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION"
fi

if [ -z ${APP_NAME+x} ]; then
    export APP_NAME="flask-app"
    echo "APP_NAME=$APP_NAME"
fi

export ECR_REPO_NAME="python-apps"