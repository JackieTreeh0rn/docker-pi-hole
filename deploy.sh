#!/bin/bash

set -o allexport
. ./pihole-orbital.env

docker pull pihole/pihole:latest

# Deploy custom network - edit to reflect desired network or comment out #
docker network create -d overlay --subnet=10.0.53.0/24 --gateway=10.0.53.1 pihole

# Deploy PiHole
docker stack deploy -c docker-compose-stack-hostmode.yml pihole