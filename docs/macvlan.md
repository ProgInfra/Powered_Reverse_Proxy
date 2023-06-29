# Powered Reverse Proxy : MacVLAN

![Icon](../icon.png)

## Table Of Contents

- [Powered Reverse Proxy : MacVLAN](#powered-reverse-proxy--macvlan)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [How to use it](#how-to-use-it)

## Description

If you want to deploy Traefik on a machine with port 80 and 443 already used, you can setup a Docker Network, the MacVLAN Network Type. This network can create some container with IP address on your private local network, so you can get access to Traefik like for a VM with a separated IP.

## How to use it

You can use these example in : `src/standalone/macvlan` or `src/swarm/macvlan`.

> When you are in the host that deploy this container, you can't access to the service, you have to access it with an other computer on your network instead of the host.
