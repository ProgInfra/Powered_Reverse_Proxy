# Powered Reverse Proxy

![Icon](./icon.png)

[Proxy icons created by rukanicon - Flaticon](https://www.flaticon.com/free-icons/proxy)

## Table Of Contents

- [Powered Reverse Proxy](#powered-reverse-proxy)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Access](#access)
  - [Documentations](#documentations)
  - [Getting Started](#getting-started)
  - [Development](#development)
    - [Build and Deploy](#build-and-deploy)
  - [Contributing](#contributing)
  - [License](#license)

## Description

This project regroups documentation, tips and example of reverse proxy and how to use these in different way.

## Access

- **Development (Local)** :
  - [Powered Reverse Proxy Docs Development](http://localhost:6007)
- **Production (Local)** :
  - [Powered Reverse Proxy Docs Production](http://localhost:6007)
- **Production** :
  - [Powered Reverse Proxy Docs Production](https://proginfra.gitlab.io/powered_reverse_proxy)
- **Traefik** :
  - **Standalone** :
    - [Dashboard](http://proxy.local.gd)

## Documentations

- [Ideas](./docs/ideas.md)
- [DNS Providers](./docs/providers.md)
- [Traefik in Vagrant VM](./docs/vagrant.md)
- [Traefik with MacLAN Network](./docs/macvlan.md)
- [Traefik with Docker Label](./docs/docker.md)
- [Challenge Types (DNS or HTTP Challenge) to grant HTTPS](https://letsencrypt.org/docs/challenge-types/) : DNS Challenge can be used for a private server (without public access) but the HTTP Challenge need your server to be publicly accessible.
- [DNS Provider with DNS Challenge supported](https://doc.traefik.io/traefik/https/acme/#providers)

## Getting Started

You have each prototype and sample of Traefik in the `src` folder with three different version :

- **Standalone** : Use of Traefik as Reverse Proxy for external services (redirect with HTTPS for example)
- **Docker** : Use of Traefik as Reverse Proxy for local docker container
- **Swarm** : Use of Traefik as Reverse Proxy for a docker swarm cluster with some services
- **VM** : Use of Traefik as Reverse Proxy inside a Virtual Machine with Vagrant to use it with other service that already use port 80 and 443

There are used by default with [Cloudflare](https://www.cloudflare.com/) as DNS provider with DNS Challenge method.

You have each documentation [here](#documentations).

> You can also check the [official documentation](https://doc.traefik.io/traefik/) and create your own Traefik configuration.

## Development

If you want you can **develop** this repository :

1) You need to install **[Docker](https://docs.docker.com/get-docker/)** and **[Make](https://progdevlab.gitlab.io/dyntools/#/docs/global/makefile)**
2) [Build and Deploy](#build-and-deploy) the application

### Build and Deploy

- **Production** :
  - `make start-docs` : Start Documentation Website
  - `make stop-docs` : Stop Documentation Website
- **Development** :
  - `make start-docs-dev` : Start Documentation Website
  - `make stop-docs-dev` : Stop Documentation Website

## Contributing

See [CONTRIBUTING](./CONTRIBUTING.md) for more information.

## License

This project is licensed under the terms of the MIT license.

See [LICENSE](./LICENSE.md) for more information.
