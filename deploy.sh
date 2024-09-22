#!/bin/bash

docker pull pihole/pihole:2024.07.0

docker network create -d overlay --subnet=10.0.53.0/24 --gateway=10.0.53.1 pihole

docker stack deploy -c docker-compose-stack-hostmode.yml pihole