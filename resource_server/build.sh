#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

docker build --tag odenktools/oauth2-resource-server:1.0.0 --build-arg JAR_FILE=target/resourceserver-1.0.0.jar .

docker tag odenktools/oauth2-resource-server:1.0.0 odenktools/oauth2-resource-server:latest
