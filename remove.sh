#!/bin/bash


docker stack rm pihole
docker network rm pihole

sudo rm -rvf /mnt/glusterfs/pihole/pihole-dnsmasq/*
sudo rm -rvf /mnt/glusterfs/pihole/pihole-data/*
sudo rm -rvf /mnt/glusterfs/pihole/lighttpd/*

