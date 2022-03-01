#!/bin/bash
export UID=$(id -u)
export GID=$(id -g)
docker-compose down
env UID=${UID} GID=${GID} docker-compose up --remove-orphans

