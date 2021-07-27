#!/usr/bin/env bash

curl --silent -o docker-compose.yml https://raw.githubusercontent.com/devinrsmith/deephaven-compose/main/docker-compose.yml
curl --silent -o .env https://raw.githubusercontent.com/devinrsmith/deephaven-compose/main/.env
curl --silent --create-dirs -o samples/Dockerfile https://raw.githubusercontent.com/deephaven/deephaven-core/main/samples/Dockerfile
curl --silent --create-dirs -o samples/sample_script.sh https://raw.githubusercontent.com/deephaven/deephaven-core/main/samples/sample_script.sh

chmod +x samples/sample_script.sh

docker-compose pull

docker build -t deephaven/examples samples


