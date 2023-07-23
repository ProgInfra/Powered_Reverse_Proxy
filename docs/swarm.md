# Powered Reverse Proxy : Docker Swarm

![Icon](../icon.png)

## Table Of Contents

- [Powered Reverse Proxy : Docker Swarm](#powered-reverse-proxy--docker-swarm)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [How to use it](#how-to-use-it)
  - [MacVLAN Mode](#macvlan-mode)

## Description

You can use it in swarm mode, just the deploy method isn't the same.

## How to use it

Go to the `src/swarm` to know how to use it.

```bash
docker stack deploy -c compose.yml traefik
```

## MacVLAN Mode

Go to the `src/swarm/macvlan` to know how to use it.

```bash
# Create Network MacVLAN configuration (need IP Range ! Here it's just 192.168.1.152)
docker network create --config-only --subnet 192.168.1.0/24 -o parent=enp0s31f6 --ip-range 192.168.1.151/32 collabnet
# Create Network MacVLAN for Swarm attachable based on config
docker network create --driver=macvlan --scope swarm --config-from collabnet --attachable swarm-macvlan
# Deploy Treafik service
docker stack deploy -c compose.yml traefik
```

Here some [Documentation](https://collabnix.com/docker-17-06-swarm-mode-now-with-macvlan-support/)
