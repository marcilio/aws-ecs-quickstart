#!/bin/bash

. ./config.sh

docker run -d -p 5000:5000 --name "$APP_NAME" "$APP_NAME"
