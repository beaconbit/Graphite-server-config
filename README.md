# Graphite-server-config
Collection of manual config changes and systemd services to add when setting up a clean linux install intended for running graphite

## /etc/nginx 
Reverse proxy config to serve machine manuals as static files out of /var/www/\*/EN/site/index.html

## /etc/docker
default dns setting to make docker containers work on dual homed device

## /etc/ngrok
ngrok.yml file that systemd service reads to launch tunnels on startup, these expose all the apps and enable ssh

## /etc/systemd
unit files for graphite server and ngrok tunnels

## nftables.conf 
modern version of iptables, used to forward traffic between interfaces on a dual homed device so that the docker containers can talk to eachother (the python script has to scrape from one interface while the rest of the containers are accessible on the other interface via exposed ports). 
> I think this file needs to be modified depending on the interface names of whatever device it's on
> The docker containers actually pass data via a proxy which is also defined in the docker-compose.yml, this proxy won't work without the nftables.config setup


