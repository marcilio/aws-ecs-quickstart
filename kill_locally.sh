#!/bin/bash

. ./config.sh

echo "Stopping and removing container: $APP_NAME"
docker stop "$APP_NAME"
docker rm "$APP_NAME"
